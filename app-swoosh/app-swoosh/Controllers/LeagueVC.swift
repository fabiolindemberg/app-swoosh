//
//  LeagueVCViewController.swift
//  app-swoosh
//
//  Created by Fabio Lindemberg on 25/03/2018.
//  Copyright © 2018 Fabio Lindemberg. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {

    var player: Player!
    
    @IBOutlet weak var btnNext: BorderButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //btnNext.isEnabled = false
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btnWomen(_ sender: Any) {
        player = setPlayer(desired: "Women")
    }
    
    @IBAction func btnMen(_ sender: Any) {
        player = setPlayer(desired: "Men")
    }
    
    @IBAction func btnCoEd(_ sender: Any) {
        player = setPlayer(desired: "Co-Ed")
    }
    
    @IBAction func onNextTapped(_ sender: Any) {
        performSegue(withIdentifier: "leagueVCSegue", sender: self)
    }
    
    func setPlayer(desired league: String) -> Player {
        btnNext.isEnabled = true
        return Player(desiredLeague: league, skillLevel: "")
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let SkillVC = segue.destination as? SkillVC {
            SkillVC.player = player
        }
    }
    
}
