//
//  ContentView.swift
//  SwiftUI-Environment-Post-iOS-17
//
//  Created by Goutham Devaraju on 30/10/24.
//

import SwiftUI
import Observation

@Observable
class AppState {
    var isBulbOn: Bool = false
}

struct BulbViewTwo: View {
    
    @Environment(AppState.self) private var appState: AppState
    
    var body: some View {
        
        @Bindable var appStateBindable = appState
        
        Image(systemName: "lightbulb")
            .font(.largeTitle)
            .foregroundStyle(.black)
        Toggle(isOn: $appStateBindable.isBulbOn) {
            Text("Study room bulb")
                .frame(maxWidth: .infinity, alignment: .center)
        }
        .onSubmit {
            appStateBindable.isBulbOn.toggle()
        }
    }
}

struct BulbView: View {
    
    var body: some View {
        BulbViewTwo()
    }
}

struct ContentView: View {
    
    @Environment(AppState.self) private var appStateContentView: AppState
    
    var body: some View {
        VStack {
            BulbView()
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(appStateContentView.isBulbOn ? .yellow : .white)
    }
}

#Preview {
    ContentView()
        .environment(AppState())
}
