//
//  LeagueVC.swift
//  app-swoosh
//
//  Created by Hyeon Uk Jeong on 6/14/18.
//  Copyright © 2018 Hyeon Uk Jeong. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {

    var player:Player!
    
    @IBOutlet weak var nextBtn: BorderButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        player=Player()
    }

   
    
    @IBAction func onNextPressed(_ sender: Any) {
        performSegue(withIdentifier: "skillVCSegue", sender: self)
    }
    
    @IBAction func mensLeagueTapped(_ sender: Any) {
        selectLeague(leagueType: "mens")
    }
    
    @IBAction func womensLeagueTapped(_ sender: Any) {
        selectLeague(leagueType: "womens")
    }
    
    @IBAction func coedLeagueTapped(_ sender: Any) {
        selectLeague(leagueType: "coed")
    }
    func selectLeague(leagueType: String) {
        player.desiredLeague = leagueType
        nextBtn.isEnabled=true
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let skillVC = segue.destination as? SkillVC {
            skillVC.player = player
        }
    }
}
