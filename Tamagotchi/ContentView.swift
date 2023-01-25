//
//  ContentView.swift
//  Tamagotchi
//
//  Created by Morris, Fenston (AGDF) on 24/01/2023.
//

import SwiftUI

struct ContentView: View {
    
    
    @State private var tamagotchi = Tamagotchi(health: 10, hunger: 5, sleep: 10, medicine: 10, happy: 0)
    
    var canPlay: Bool {
        var canPlay = true
        if tamagotchi.health < 7 && tamagotchi.hunger < 5 && tamagotchi.sleep < 5 && tamagotchi.medicine < 8 {
            canPlay = false
        }else {
            canPlay = true
        }
        return canPlay
    }
    
    
    
    
    
    
    var body: some View {
        VStack {
            
            Form {
               
                VStack(spacing: 100) {
                    Text(tamagotchi.displayStats())
                        .padding()
                }
                Section {
                    Button("Feed Tamagotchi a Meal", action: {
                        tamagotchi.feedMeal()
                    })
                    Button("Feed Tamagotchi a Snack", action: {
                        tamagotchi.feedSnack()
                    })
                    Button("Play a game with Tamagotchi", action: {
                        tamagotchi.playGame()
                    })
                        .disabled(!canPlay)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
