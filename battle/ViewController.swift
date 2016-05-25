//
//  ViewController.swift
//  battle
//
//  Created by William Fairchild on 5/25/16.
//  Copyright © 2016 RunJumpStomp. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //Outlets
    @IBOutlet weak var player1AttackButton: UIButton!
    @IBOutlet weak var player2AttackButton: UIButton!
    @IBOutlet weak var character1Image: UIImageView!
    @IBOutlet weak var character2Image: UIImageView!
    @IBOutlet weak var feedbackLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //Actions
    @IBAction func onPlayer1AttackButtonTapped(sender: UIButton) {
        
    }
    
    @IBAction func onPlayer2AttackButtonTapped(sender: UIButton) {
    }
    


}

