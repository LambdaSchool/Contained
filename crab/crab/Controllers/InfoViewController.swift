//
//  InfoViewController.swift
//  crab
//
//  Created by alfredo on 12/5/19.
//  Copyright © 2019 alfredo. All rights reserved.
//

import UIKit

class InfoViewController: UIViewController {
    
    //Mark: -IBOutlets
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
