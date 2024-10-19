//
//  ContentView.swift
//  Codingo
//
//  Created by Mayara Souza on 16/10/24.
//

import SwiftUI

struct ContentView: View {
    let newTricks = 6
    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                Spacer()
                Image(systemName: "wand.and.stars")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 60, height: 60)
                Text("Award.title")
                    .font(.title)
                    .fontWeight(.bold)
                Text("Award.subtitle\(newTricks)")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                
                NavigationLink(destination: CodingQuestsView()) {
                    Text("Award.button")
                        .font(.headline)
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(10)
                }
                Spacer()
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
