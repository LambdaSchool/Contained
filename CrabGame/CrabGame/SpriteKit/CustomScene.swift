//
//  CustomScene.swift
//  CrabGame
//
//  Created by Shawn Gee on 2/24/20.
//  Copyright © 2020 Swift Student. All rights reserved.
//

import Foundation
import SpriteKit

class CustomScene: SKScene {
    let crab = SKSpriteNode()
    var lastPositionTapped = CGPoint.zero
    
    // Add and center child, initializing animation sequence
    override func sceneDidLoad() {
        super.sceneDidLoad()
        addChild(crab)
        
        let selectedTextureName = Settings.shared.happyCrab ? "HappyCrab" : "WaitingCrab"
        crab.loadTextures(named: selectedTextureName, forKey: SKSpriteNode.textureKey)
        
        if let lastCrabPosition = Settings.shared.lastCrabPosition {
            crab.position = lastCrabPosition
        } else {
            crab.position = CGPoint(x: frame.midX, y: frame.midY)
        }
    }
    
    //Move to touch
    public override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        // Fetch a touch or leave
        guard !touches.isEmpty, let touch = touches.first else { return }
        
        // Retrieve position
        lastPositionTapped = touch.location(in: self)
        
        // Create move action
        let actionDuration = 1.0
        let moveAction = SKAction.move(to: lastPositionTapped, duration: actionDuration)
        
        let rollAction = SKAction.rotate(byAngle: CGFloat.pi * 2, duration: actionDuration)
        let zoomAction = SKAction.scale(by: 1.3, duration: 0.3)
        let unzoomAction = SKAction.scale(to: 1.0, duration: 0.1)
        
        switch  Settings.shared.shouldZoom {
        case false:
            crab.run(moveAction)
        case true :
            let sequenceAction = SKAction.sequence([zoomAction, moveAction, unzoomAction])
            crab.run(sequenceAction)
        }
        
        if Settings.shared.shouldRoll {
            crab.run(rollAction)
        }
    }
    
    func save() {
        Settings.shared.lastCrabPosition = lastPositionTapped
    }
}
