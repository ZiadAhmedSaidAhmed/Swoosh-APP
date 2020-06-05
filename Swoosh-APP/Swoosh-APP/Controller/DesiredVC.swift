//
//  DesiredVC.swift
//  Swoosh-APP
//
//  Created by Ziad Ahmed Said Ahmed on 6/4/20.
//  Copyright © 2020 Ziad Ahmed Said Ahmed. All rights reserved.
//

import UIKit

class DesiredVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func onNextTapped(_ sender: Any) {
        performSegue(withIdentifier: "SkillVCSegue", sender: self)
    }
    @IBAction func unwindFromSkillVCSegue(unwindSegue: UIStoryboardSegue) {
        
    }
    
}
