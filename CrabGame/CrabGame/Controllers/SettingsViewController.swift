//
//  SettingsViewController.swift
//  CrabGame
//
//  Created by Nick Nguyen on 1/27/20.
//  Copyright © 2020 Nick Nguyen. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    
     var userDefault = UserDefaults()
    
    @IBOutlet weak var rollLabel: UILabel!
    @IBOutlet weak var zoomLabel: UILabel!
    @IBOutlet weak var happyCrabLabel: UILabel!
    
    
    @IBOutlet weak var rollSwitch: UISwitch!
    @IBOutlet weak var zoomSwitch: UISwitch!
    @IBOutlet weak var happyCrabSwitch: UISwitch!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        rollSwitch.isOn = userDefault.bool(forKey: "Rool")
        zoomSwitch.isOn = userDefault.bool(forKey: "Zoom")
        happyCrabSwitch.isOn = userDefault.bool(forKey: "CrabSetting")
       
    }
    

    @IBAction func toggleRoll(_ sender: UISwitch) {
        userDefault.set(sender.isOn, forKey: "Roll")
        rollSwitch.setOn(sender.isOn, animated: true)
    }
    
    @IBAction func toggleZoom(_ sender: UISwitch) {
        userDefault.set(sender.isOn, forKey: "Zoom")
        zoomSwitch.setOn(sender.isOn, animated: true)
    }
    
    @IBAction func toggleCrab(_ sender: UISwitch) {
        userDefault.set(sender.isOn, forKey: "CrabSetting")
        happyCrabSwitch.setOn(sender.isOn, animated: true)
        
    }
    
    
    
    
}
