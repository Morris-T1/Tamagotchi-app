//
//  ContentView.swift
//  Tamagotchi
//
//  Created by Morris, Fenston (AGDF) on 24/01/2023.
//

import SwiftUI

struct ContentView: View {
    @State private var tamagotchi = Tamagotchi(health: 10, hunger: 5, sleep: 10, medicine: 10)
    
    var body: some View {
        VStack {
            Text(tamagotchi.displayStats())
                .padding()
            Button("Feed Tamagotchi a Meal", action: {
                tamagotchi.feedMeal()
            })
            Button("Feed Tamagotchi a Snack", action: {
                tamagotchi.feedSnack()
            })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
