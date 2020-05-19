//
//  GameViewController.swift
//  Contained
//
//  Created by Bryan Cress on 5/18/20.
//  Copyright © 2020 Bryan Cress. All rights reserved.
//

import UIKit

import SpriteKit



class GameViewController: UIViewController {

    @IBOutlet weak var skView: SKView!
    
        var skscene: CustomScene? = nil
        
        override func viewDidAppear(_ animated: Bool) {
            super.viewDidAppear(animated)
            skscene = CustomScene(size: view.bounds.size)
            skView.presentScene(skscene)
        }
    }
