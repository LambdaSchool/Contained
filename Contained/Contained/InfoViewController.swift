//
//  InfoViewController.swift
//  Contained
//
//  Created by Nathanael Youngren on 1/9/19.
//  Copyright © 2019 Nathanael Youngren. All rights reserved.
//

import UIKit

class InfoViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func done(_ sender: Any) {
        navigationController?.popToRootViewController(animated: true)
    }
    
    
    
}
