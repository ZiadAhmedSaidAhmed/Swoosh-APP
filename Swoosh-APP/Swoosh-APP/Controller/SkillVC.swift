//
//  SkillVC.swift
//  Swoosh-APP
//
//  Created by Ziad Ahmed Said Ahmed on 6/4/20.
//  Copyright © 2020 Ziad Ahmed Said Ahmed. All rights reserved.
//

import UIKit

class SkillVC: UIViewController {

    @IBOutlet weak var categoryLbl: UILabel!
    var player: Player!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        categoryLbl.text = "\(categoryLbl.text!) \(player.desiredLeague!)"
    }
    
  
    
}
