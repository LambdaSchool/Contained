//
//  InfoViewController.swift
//  HappyCrab
//
//  Created by Breena Greek on 2/12/20.
//  Copyright © 2020 Breena Greek. All rights reserved.
//

import UIKit

class InfoViewController: UIViewController {
    
    // MARK: IBActions
    
   @IBAction func done(_ sender: Any) {
        navigationController?.popToRootViewController(animated: true)
    }
    
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

}
