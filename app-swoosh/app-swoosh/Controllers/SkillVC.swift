//
//  SkillVC.swift
//  app-swoosh
//
//  Created by Fabio Lindemberg on 25/03/2018.
//  Copyright © 2018 Fabio Lindemberg. All rights reserved.
//

import UIKit

class SkillVC: UIViewController {
    
    var player : Player!
    
    @IBOutlet weak var lbIAm: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let desiredLeague = player.desiredLeague {
            lbIAm.text = "I am: \(desiredLeague)"
        }
        // Do any additional setup after loading the view.
        //print(player.desiredLeague)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
