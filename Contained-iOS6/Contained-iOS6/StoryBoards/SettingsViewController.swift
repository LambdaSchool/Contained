//
//  SettingsViewController.swift
//  Contained-iOS6
//
//  Created by Hector Steven on 4/29/19.
//  Copyright © 2019 Hector Steven. All rights reserved.
//

import UIKit



class SettingsViewController: UIViewController,  SettingsControllerProtocol {

    override func viewDidLoad() {
        super.viewDidLoad()
		
    }
	
	@IBAction func RollSwitch(_ sender: UISwitch) {
		settingsController?.setRoll()
	}
	@IBAction func ZoomSwitch(_ sender: Any) {
		settingsController?.setZoom()
	}
	
	var settingsController: SettingsController?
	
}
