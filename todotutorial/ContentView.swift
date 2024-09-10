//
//  ContentView.swift
//  todotutorial
//
//  Created by Alen John on 2024-09-07.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.white,.blue]), startPoint: .topLeading, endPoint: .bottom)
                .ignoresSafeArea()
        }
        }
    }


#Preview {
    ContentView()
        .modelContainer(for: Item.self, inMemory: true)
}
