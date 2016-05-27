//
//  Character.swift
//  battle
//
//  Created by William Fairchild on 5/25/16.
//  Copyright © 2016 RunJumpStomp. All rights reserved.
//

import Foundation

//This is my base class

class Character {
    private var _hp: Int = 100
    private var _attackPower: Int = 10
    private var _name: String!
    
    var hp: Int {
        get {
            return _hp
        }
        
        set(newHp) {
            
        }
    }
    
    var attackPower: Int {
        get {
            return _attackPower
        }
    }
    
    var name: String {
        get {
            return _name
        }
    }
    
    init() {
        
    }
    
    init(hp: Int, attackPower: Int, name: String){
        self._hp = hp
        self._attackPower = attackPower
        self._name = name
    }
        
    func checkForDeath() -> Bool {
        if hp <= 0 {
            return true
        } else {
            return false
        }
    }
}