//
//  GameViewController.swift
//  Contained
//
//  Created by Jake Connerly on 6/10/19.
//  Copyright © 2019 jake connerly. All rights reserved.
//

import UIKit
import SpriteKit

class GameViewController: UIViewController {
    
    //
    // MARK: - Outlets and Properties
    //
    
    @IBOutlet weak var skview: SKView!
    
      var skscene: CustomScene? = nil
    
    //
    // MARK: - View LifeCycle
    //
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        skscene = CustomScene(size: view.bounds.size)
        skview.presentScene(skscene)
    }
}
