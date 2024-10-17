//
//  ContentView.swift
//  Codingo
//
//  Created by Mayara Souza on 16/10/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                Spacer()
                Image(systemName: "wand.and.stars")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 60, height: 60)
                Text("Code wizard!")
                    .font(.title)
                    .fontWeight(.bold)
                Text("You’ve just added 6 new tricks to your skills!")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                
                NavigationLink(destination: CodingQuestsView()) {
                    Text("Unleash more magic!")
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
