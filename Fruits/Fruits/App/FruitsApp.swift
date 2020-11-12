//
//  FruitsApp.swift
//  Fruits
//
//  Created by Field Employee on 11/10/20.
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
            //OnboardingView()
        }
    }
}

struct FruitsApp_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
