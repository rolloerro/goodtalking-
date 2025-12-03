import SwiftUI

struct CategoryView: View {
    let category: Category
    @State private var phrases = PhrasesStore.all
    @State private var search = ""

    var filtered: [Phrase] {
        phrases.filter { $0.category == category && (search.isEmpty ? true : ($0.original.localizedCaseInsensitiveContains(search) || $0.improved.localizedCaseInsensitiveContains(search))) }
    }

    var body: some View {
        List {
            Section {
                TextField("Поиск...", text: $search)
                    .textFieldStyle(.roundedBorder)
            }

            ForEach(filtered) { p in
                HStack {
                    VStack(alignment: .leading) {
                        Text(p.original).foregroundColor(.secondary).font(.subheadline)
                        Text(p.improved).fontWeight(.medium)
                    }
                    Spacer()
                    NavigationLink(destination: PhraseDetailView(phrase: p)) {
                        Image(systemName: "chevron.right")
                    }
                }
                .padding(.vertical, 6)
            }
        }
        .navigationTitle(category.rawValue)
    }
}
//
//  CategoryView.swift.swift
//  goodtalking
//
//  Created by Vladimir Kopylov on 03/12/2025.
//

