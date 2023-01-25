//
//  Tamagotchi.swift
//  Tamagotchi
//
//  Created by Morris, Fenston (AGDF) on 24/01/2023.
//

import Foundation

struct Tamagotchi {
    
    var health = 0
    var hunger = 0
    var sleep = 0
    var medicine = 0
    var happy = 0
    
    func displayStats() -> String {
        return """
        Health level: \(health)
        Hunger level: \(hunger)
        Sleep level : \(sleep)
        Medicine level: \(medicine)
        Happy level: \(happy)
        """
    }
    
    mutating func feedMeal() {
        if self.hunger < 9 {
            self.hunger += 2
            self.happy += 5
        }else {
            print("Cannot feed, Tamagotchi is full")
        }
    }
    
    mutating func feedSnack() {
        if self.hunger < 10 {
            self.hunger += 1
            self.happy += 2
        }else {
            print("Cannot feed, Tamagotchi is full")
        }
    }
    
    
    
    mutating func playGame() {
        self.happy += 10
        
    }
    
}

