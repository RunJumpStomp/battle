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
    @IBOutlet weak var playAgainButton: UIButton!
    @IBOutlet weak var playAgainLabel: UILabel!
    
    
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
        if knight.isAttacked(orc.attackPower) {
            feedbackLabel.text = "\(orc.name) attacked \(knight.name) for \(orc.attackPower) hp"
            rightPlayerHP.text = String(knight.hp)
            player2AttackButton.enabled = false
            
            //find a way to insert a delay here
            delay(3.0) {
                self.player2AttackButton.enabled = true
            }
            if knight.checkForDeath() {
                character2Image.hidden = true
                rightPlayerHP.text = "Dead"
                feedbackLabel.text = "\(orc.name) has killed \(knight.name) in battle!"
                playAgainLabel.hidden = false
                playAgainButton.hidden = false
            }
        }
        
        
    }
    
    @IBAction func onPlayer2AttackButtonTapped(sender: UIButton) {
        
        if orc.isAttacked(knight.attackPower) {
            feedbackLabel.text = "\(knight.name) attacked \(orc.name) for \(knight.attackPower) hp"
            leftPlayerHP.text = String(orc.hp)
            player1AttackButton.enabled = false
            delay(3.0) {
                self.player1AttackButton.enabled = true
            }
            if orc.checkForDeath() {
                character1Image.hidden = true
                leftPlayerHP.text = "Dead"
                feedbackLabel.text = "\(knight.name) has killed \(orc.name) in battle!"
                playAgainLabel.hidden = false
                playAgainButton.hidden = false
            }
        }
    }

    
    @IBAction func onPlayAgainButtonTapped(sender: UIButton) {
        startNewGame()
        
        
    }
    func startNewGame() {
        //start a new game here.  remember to call this as part of viewDidLoad
        character1Image.hidden = false
        character2Image.hidden = false
        feedbackLabel.text = "Hold the Line!"
        rightPlayerHP.text = String(knight.hp)
        leftPlayerHP.text = String(orc.hp)
        playAgainButton.hidden = true
        playAgainLabel.hidden = true
        player1AttackButton.enabled = true
        player2AttackButton.enabled = true
        
    }
    //find someone to explain this to me!
    func delay(delay:Double, closure:()->()) {
        dispatch_after(
            dispatch_time(
                DISPATCH_TIME_NOW,
                Int64(delay * Double(NSEC_PER_SEC))
            ),
            dispatch_get_main_queue(), closure)
    }
    
}

