//
//  InfoViewController.swift
//  Contained
//
//  Created by Bradley Diroff on 2/24/20.
//  Copyright © 2020 Bradley Diroff. All rights reserved.
//

import UIKit

class InfoViewController: UIViewController {


    @IBAction func itsDone(_ sender: Any) {
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
