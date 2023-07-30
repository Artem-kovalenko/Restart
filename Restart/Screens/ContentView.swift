//
//  ContentView.swift
//  Restart
//
//  Created by Артём Коваленко on 22.07.2023.
//

import SwiftUI

struct ContentView: View {
    // AppStorage - Property Wrapper. store data on users devices
    // "onboarding" - unique key
    // isOnboardingScreenVisible - property name to use
    @AppStorage("onboarding") var isOnboardingViewActive: Bool = true
    
    var body: some View {
        ZStack {
            if isOnboardingViewActive {
                OnboardingView()
            } else {
                HomeView()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
