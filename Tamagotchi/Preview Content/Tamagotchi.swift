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
    
    func displayStats() -> String {
        return """
        Health level: \(health)
        Hunger level: \(hunger)
        Sleep level : \(sleep)
        Medicine level: \(medicine)
        """
    }
    
    mutating func feed() {
        if hunger < 10 {
            hunger += 1
        }else {
            print("Cannot feed, Tamagotchi is full")
        }
    }
    
}

