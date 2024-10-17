//
//  UnleashMoreMagicView.swift
//  Codingo
//
//  Created by Mayara Souza on 16/10/24.
//

import SwiftUI

struct CodingQuestsView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(spacing: 16) {
                    QuestItemView(title: "The Spell of Many Tongues", startDate: "October 15, 2024")
                    QuestItemView(title: "Runes of Error Handling", startDate: "January 31, 2024")
                    QuestItemView(title: "The Enchanted Realm of Accessibility", startDate: "June 18, 2023")
                    QuestItemView(title: "Potions and Protocols", startDate: "August 7, 2022")
                    QuestItemView(title: "The Alchemist's Guide to Memory Management")
                    QuestItemView(title: "Guardians of Grand Central Dispatch")
                }
                .padding()
            }
            .background(Color(UIColor.secondarySystemBackground))
            .navigationBarTitleDisplayMode(.inline)
            .navigationTitle("Coding Quests")        }
    }
}

struct QuestItemView: View {
    let title: String
    let startDate: String?
    
    init(title: String, startDate: String? = nil) {
        self.title = title
        self.startDate = startDate
    }
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text(title)
                .font(.body)
                .fontWeight(.semibold)
            if let startDate = startDate {
                Text("Started on \(startDate)")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            } else {
                Text("Not started yet")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding()
        .background(Color(UIColor.systemBackground))
        .cornerRadius(10)
    }
}


#Preview {
    CodingQuestsView()
}
