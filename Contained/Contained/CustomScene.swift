//
//  CustomScene.swift
//  Contained
//
//  Created by Gi Pyo Kim on 9/16/19.
//  Copyright © 2019 GIPGIP Studio. All rights reserved.
//

import SpriteKit

class CustomScene: SKScene {
    let crab = SKSpriteNode()
    
    // Add and center child, initializing animation sequence
    override func sceneDidLoad() {
        super.sceneDidLoad()
        addChild(crab)
        
        // choose between Happy or Waiting Crab
        switch Settings.shared.useHappyCrab {
        case true:
            crab.loadTextures(named: "HappyCrab", forKey: SKSpriteNode.textureKey)

        case false:
            crab.loadTextures(named: "WaitingCrab", forKey: SKSpriteNode.textureKey)
        }
        
        // remember last touch point
        if let lastPosition = Settings.shared.recentTouchPoint {
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
        Settings.shared.recentTouchPoint = position
        
        // Create move action
        let actionDuration = 1.0
        let moveAction = SKAction.move(to: position, duration: actionDuration)
        
        let rollAction = SKAction.rotate(byAngle: CGFloat.pi * 2, duration: actionDuration)
        let zoomAction = SKAction.scale(by: 1.3, duration: 0.3)
        let unzoomAction = SKAction.scale(to: 1.0, duration: 0.1)
        let fadeAction = SKAction.sequence([SKAction.fadeOut(withDuration: 0.5),SKAction.fadeIn(withDuration: 0.3)])
        
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
        
        if Settings.shared.shouldFade {
            crab.run(fadeAction)
        }
        
    }
}
