//
//  InfoViewController.swift
//  Contained
//
//  Created by David Williams on 2/11/20.
//  Copyright © 2020 david williams. All rights reserved.
//

import UIKit

class InfoViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func doneButtonPressed(_ sender: Any) {
         navigationController?.popToRootViewController(animated: true)
    }
}
