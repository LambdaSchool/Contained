//
//  CustomScene.swift
//  Contained
//
//  Created by Jeremy Taylor on 2/2/19.
//  Copyright © 2019 Bytes-Random L.L.C. All rights reserved.
//

import SpriteKit

class CustomScene: SKScene {
    let crab = SKSpriteNode()
    
    // Add and center child, initializing animation sequence
    override func sceneDidLoad() {
        super.sceneDidLoad()
        addChild(crab)
        switch Settings.shared.waitingCrab {
        case false:
            crab.loadTextures(named: "HappyCrab", forKey: SKSpriteNode.textureKey)
        case true:
            crab.loadTextures(named: "WaitingCrab", forKey: SKSpriteNode.textureKey)
        }
        
        if let savedPosition = Settings.shared.lastPosition {
            crab.position = savedPosition
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
    }
}
