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
                    QuestItemView(title: L10n.CodingQuests.internationalization, startDate: "October 15, 2024")
                    QuestItemView(title: L10n.CodingQuests.errorHandling, startDate: "January 31, 2024")
                    QuestItemView(title: L10n.CodingQuests.accessibility, startDate: "June 18, 2023")
                    QuestItemView(title: L10n.CodingQuests.protocols, startDate: "August 7, 2022")
                    QuestItemView(title: L10n.CodingQuests.memoryManagement)
                    QuestItemView(title: L10n.CodingQuests.grandCentralDispatch)
                }
                .padding()
            }
            .background(Color(UIColor.secondarySystemBackground))
            .navigationBarTitleDisplayMode(.inline)
            .navigationTitle(L10n.CodingQuests.title)
        }
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
                Text(L10n.CodingQuests.startedOn(startDate))
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            } else {
                Text(L10n.CodingQuests.notStarted)
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
