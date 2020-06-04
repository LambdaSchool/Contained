//
//  CustomScene.swift
//  Contained
//
//  Created by Cora Jacobson on 6/3/20.
//  Copyright © 2020 Cora Jacobson. All rights reserved.
//

import Foundation

import SpriteKit

class CustomScene: SKScene {
    let crab = SKSpriteNode()
    
    // Add and center child, initializing animation sequence
    override func sceneDidLoad() {
        super.sceneDidLoad()
        addChild(crab)
        if Settings.shared.texture == "HappyCrab" {
            crab.loadTextures(named: "HappyCrab", forKey: SKSpriteNode.textureKey)
        } else {
            crab.loadTextures(named: "WaitingCrab", forKey: SKSpriteNode.textureKey)
        }
        
        if let lastPosition = Settings.shared.lastPosition {
            crab.position = lastPosition
        } else {
            crab.position = CGPoint(x: frame.midX, y: frame.midY)
        }
        
    }
    
    // Move to touch
    public override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        // Fetch a touch or leave
        guard !touches.isEmpty, let touch = touches.first else { return }
        
        // Retrieve position
        let position = touch.location(in: self)
        
        Settings.shared.lastPosition = position
        
        // Create move action
        let actionDuration = 1.0
        let moveAction = SKAction.move(to: position, duration: actionDuration)
        
        let rollAction = SKAction.rotate(byAngle: CGFloat.pi * 2, duration: actionDuration)
        let zoomAction = SKAction.scale(by: 1.3, duration: 0.3)
        let unzoomAction = SKAction.scale(to: 1.0, duration: 0.1)
        let fadeOutAction = SKAction.fadeOut(withDuration: actionDuration / 2)
        let fadeInAction = SKAction.fadeIn(withDuration: actionDuration / 2)
        let danceStartAction = SKAction.rotate(byAngle: -(CGFloat.pi * 0.25), duration: actionDuration / 12)
        let danceRightAction = SKAction.rotate(byAngle: CGFloat.pi * 0.5, duration: actionDuration / 6)
        let danceLeftAction = SKAction.rotate(byAngle: -(CGFloat.pi * 0.5), duration: actionDuration / 6)
        let danceEndAction = SKAction.rotate(byAngle: CGFloat.pi * 0.25, duration: actionDuration / 12)
        
        switch Settings.shared.shouldZoom {
        case false:
            crab.run(moveAction)
        case true:
            let sequenceAction = SKAction.sequence([zoomAction, moveAction, unzoomAction])
            crab.run(sequenceAction)
        }
        
        if Settings.shared.shouldRoll {
            crab.run(rollAction)
        }
        
        switch Settings.shared.shouldFade {
        case false:
            crab.run(moveAction)
        case true:
            let sequenceAction = SKAction.sequence([fadeOutAction, fadeInAction, moveAction])
            crab.run(sequenceAction)
        }
        
        if Settings.shared.shouldDance {
            let sequenceAction = SKAction.sequence([danceStartAction, danceRightAction, danceLeftAction, danceRightAction, danceLeftAction, danceRightAction, danceLeftAction, danceEndAction, moveAction])
            crab.run(sequenceAction)
        }
        
    }
}
