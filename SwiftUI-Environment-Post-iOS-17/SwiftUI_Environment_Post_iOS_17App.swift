//
//  SwiftUI_Environment_Post_iOS_17App.swift
//  SwiftUI-Environment-Post-iOS-17
//
//  Created by Goutham Devaraju on 30/10/24.
//

import SwiftUI

@main
struct SwiftUI_Environment_Post_iOS_17App: App {
    
    @State private var appState = AppState()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(appState)
        }
    }
}
