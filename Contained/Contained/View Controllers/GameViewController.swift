//
//  GameViewController.swift
//  Contained
//
//  Created by Rebecca Overare on 5/18/20.
//  Copyright © 2020 Rebecca Overare. All rights reserved.
//

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
