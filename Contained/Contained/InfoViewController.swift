//
//  InfoViewController.swift
//  Contained
//
//  Created by Victor  on 4/29/19.
//  Copyright © 2019 com.Victor. All rights reserved.
//

import Foundation
import UIKit

class InfoViewController: UIViewController {
    //action to go back to root view controller
    @IBAction func done(_ sender: Any) {
        navigationController?.popToRootViewController(animated: true)
    }
}
