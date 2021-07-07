//
//  GameViewController.swift
//  HappyCrab
//
//  Created by Ian French on 4/23/20.
//  Copyright © 2020 Ian French. All rights reserved.
//


import UIKit
import SpriteKit

class GameViewController: UIViewController {
  
    
    @IBOutlet weak var skview: SKView!
    
    
    var skscene: CustomScene? = nil
    
    override func viewDidAppear(_ animated: Bool) {
          super.viewDidAppear(animated)
          skscene = CustomScene(size: view.bounds.size)
          skview.presentScene(skscene)
    
    }
}

