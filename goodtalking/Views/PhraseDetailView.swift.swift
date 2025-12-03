import SwiftUI

struct PhraseDetailView: View {
    @State var phrase: Phrase
    @State private var saved = false

    var body: some View {
        VStack(spacing: 16) {
            VStack(alignment: .leading, spacing: 6) {
                Text("Было").foregroundColor(.secondary)
                Text(phrase.original).font(.title3).bold()
                Divider()
                Text("Стало").foregroundColor(.secondary)
                Text(phrase.improved).font(.title3)
            }
            .padding()
            .background(.regularMaterial)
            .cornerRadius(12)

            Button(action: {
                saved.toggle()
                // Тут можно сохранять в UserDefaults или CoreData
            }) {
                Label(saved ? "Запомнено" : "Пометить как запомнено", systemImage: saved ? "checkmark.seal.fill" : "bookmark")
            }
            .buttonStyle(.borderedProminent)

            Spacer()
        }
        .padding()
        .navigationTitle("Детали")
    }
}
//
//  PhraseDetailView.swift.swift
//  goodtalking
//
//  Created by Vladimir Kopylov on 03/12/2025.
//

