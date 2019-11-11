//
//  GameViewController.swift
//  Contained
//
//  Created by Alexander Supe on 11/11/19.
//  Copyright © 2019 Alexander Supe. All rights reserved.
//

import UIKit
import SpriteKit

class GamesViewController: UIViewController {
    @IBOutlet weak var skview: SKView!
    
    var skscene: CustomScene? = nil
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        skscene = CustomScene(size: view.bounds.size)
        skview.presentScene(skscene)
    }
}
