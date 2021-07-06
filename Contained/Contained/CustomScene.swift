//
//  CustomScene.swift
//  Contained
//
//  Created by Isaac Lyons on 9/16/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import SpriteKit

class CustomScene: SKScene {
    let crab = SKSpriteNode()
    
    // Add and center child, initializing animation sequence
    override func sceneDidLoad() {
        super.sceneDidLoad()
        addChild(crab)
        
        let animation: String
        switch Settings.shared.animationIndex {
        case 0:
            animation = "HappyCrab"
        case 1:
            animation = "WaitingCrab"
        default:
            animation = "HappyCrab"
        }
        crab.loadTextures(named: animation, forKey: SKSpriteNode.textureKey)
        
        if let position = Settings.shared.position {
            crab.position = position
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
        Settings.shared.position = position
        
        // Create move action
        let actionDuration = 1.0
        let moveAction = SKAction.move(to: position, duration: actionDuration)
        
        let rollAction = SKAction.rotate(byAngle: CGFloat.pi * 2, duration: actionDuration)
        let fadeAction = SKAction.fadeAlpha(by: -0.5, duration: 0.1)
        let unfadeAction = SKAction.fadeAlpha(by: 0.5, duration: 0.05)
        let zoomAction = SKAction.scale(by: 1.3, duration: 0.3)
        let unzoomAction = SKAction.scale(to: 1.0, duration: 0.1)
        
//        switch Settings.shared.shouldZoom {
//        case false:
//            crab.run(moveAction)
//        case true:
//            let sequenceAction = SKAction.sequence([zoomAction, moveAction, unzoomAction])
//            crab.run(sequenceAction)
//        }
        
        var sequence: [SKAction] = [moveAction]
        if Settings.shared.shouldZoom {
            sequence.insert(zoomAction, at: 0)
            sequence.append(unzoomAction)
        }
        if Settings.shared.shouldFade {
            sequence.insert(fadeAction, at: 0)
            sequence.append(unfadeAction)
        }
        
        let sequenceAction = SKAction.sequence(sequence)
        crab.run(sequenceAction)
        
        if Settings.shared.shouldRoll {
            crab.run(rollAction)
        }
    }
}
