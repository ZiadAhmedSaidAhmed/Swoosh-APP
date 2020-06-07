//
//  DesiredVC.swift
//  Swoosh-APP
//
//  Created by Ziad Ahmed Said Ahmed on 6/4/20.
//  Copyright © 2020 Ziad Ahmed Said Ahmed. All rights reserved.
//

import UIKit

class DesiredVC: UIViewController {

    @IBOutlet weak var nextBtn: Custom1BorderButton!
    var player: Player!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        player = Player()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let skillVC = segue.destination as? SkillVC {
            skillVC.player = player
        }
    }
    @IBAction func onNextTapped(_ sender: Any) {
        performSegue(withIdentifier: "SkillVCSegue", sender: self)
    }
    @IBAction func unwindFromSkillVCSegue(unwindSegue: UIStoryboardSegue) {
        
    }
    
    @IBAction func mensTapped(_ sender: Any) {
        selectedCategory(desiredLeague: "mens")
    }
    @IBAction func womensTapped(_ sender: Any) {
        selectedCategory(desiredLeague: "womens")
    }
    @IBAction func coedTapped(_ sender: Any) {
        selectedCategory(desiredLeague: "coed")
    }
    func selectedCategory(desiredLeague: String) {
        player.desiredLeague = desiredLeague
        nextBtn.isEnabled = true
    }
}

