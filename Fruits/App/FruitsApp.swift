//
//  FruitsApp.swift
//  Fruits
//
//  Created by Firdavs Bagirov on 23/01/22.
//

import SwiftUI

@main
struct FruitsApp: App {
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    
    var body: some Scene {
        WindowGroup {
            if isOnboarding {
                OnboardingView()
            } else {
                ContentView()
            }            
        }
    }
}
