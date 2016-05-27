//
//  ViewController.swift
//  battle
//
//  Created by William Fairchild on 5/25/16.
//  Copyright © 2016 RunJumpStomp. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //Variables
    
    
    var knight = Character(hp: 120, attackPower: 10, name: "Sir Bill")
    var orc = Character(hp: 100, attackPower: 15, name: "Gerp")
    
    
    //Outlets
    @IBOutlet weak var player1AttackButton: UIButton!
    @IBOutlet weak var player2AttackButton: UIButton!
    @IBOutlet weak var character1Image: UIImageView!
    @IBOutlet weak var character2Image: UIImageView!
    @IBOutlet weak var feedbackLabel: UILabel!
    @IBOutlet weak var rightPlayerHP: UILabel!
    @IBOutlet weak var leftPlayerHP: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        startNewGame()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //Actions
    @IBAction func onPlayer1AttackButtonTapped(sender: UIButton) {
        attack("P2", attackPower: knight.attackPower)
        
        
    }
    
    @IBAction func onPlayer2AttackButtonTapped(sender: UIButton) {
    }
    
    func attack(target: String, attackPower: Int) {
        //reduce the HP by the attack power
        
        if target == "P2" {
            reduceHp("P2", ammount: orc.attackPower)
        }
        
        if target == "P1" {
            reduceHp("P1", ammount: knight.attackPower)
        }
        
        
        //hide targets button for 3 seconds
        //check if target is alive and announce winner if applicable
    }
    
    func reduceHp (target: String, ammount: Int){
        //reduce the HP of the target by the ammount
        if target == "P2" {
            knight.hp -= orc.attackPower
            rightPlayerHP.text = String(knight.hp)
        }
        
        if target == "P1" {
            orc.hp -= knight.attackPower
            leftPlayerHP.text = String(orc.hp)
        }
    }
    
    func hideButton(button: Int) {
        //Hide the button of the target
    }
    
    func startNewGame() {
        //start a new game here.  remember to call this as part of viewDidLoad
        player1AttackButton.hidden = false
        player2AttackButton.hidden = false
        character1Image.hidden = false
        character2Image.hidden = false
        feedbackLabel.text = "Hold the Line!"
        rightPlayerHP.text = String(knight.hp)
        leftPlayerHP.text = String(orc.hp)
        
    }
    
}

