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
                    QuestItemView(title: L10n.CodingQuests.internationalization, startDate: Date())
                    QuestItemView(title: L10n.CodingQuests.errorHandling)
                    QuestItemView(title: L10n.CodingQuests.accessibility)
                    QuestItemView(title: L10n.CodingQuests.protocols)
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
    let startDate: Date?
    let locale: Locale
    
    private var formattedDate: String {
        guard let date = startDate else { return "" }
        return DateFormatter.localizedQuestDateFormatter(for: locale).string(from: date)
    }
    
    init(title: String, startDate: Date? = nil, locale: Locale = .current) {
        self.title = title
        self.startDate = startDate
        self.locale = locale
    }
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text(title)
                .font(.body)
                .fontWeight(.semibold)
            if startDate != nil {
                Text(L10n.CodingQuests.startedOn(formattedDate))
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

// MARK: - Date Formatter Extension
extension DateFormatter {
    static func localizedQuestDateFormatter(for locale: Locale) -> DateFormatter {
        let formatter = DateFormatter()
        formatter.locale = locale
        formatter.dateStyle = .long
        formatter.timeStyle = .none
        return formatter
    }
}

// MARK: - Preview
struct QuestItemView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            QuestItemView(title: "The Enchanted Realm of Accessibility", startDate: Date(), locale: Locale(identifier: "en_US"))
                .previewDisplayName("English")
            
            QuestItemView(title: "O Reino Encantado da Acessibilidade", startDate: Date(), locale: Locale(identifier: "pt_BR"))
                .previewDisplayName("Portuguese")
            
            QuestItemView(title: "Upcoming Quest", startDate: nil, locale: Locale(identifier: "en_US"))
                .previewDisplayName("No Date")
        }
        .previewLayout(.sizeThatFits)
        .padding()
    }
}

#Preview {
    CodingQuestsView()
}
