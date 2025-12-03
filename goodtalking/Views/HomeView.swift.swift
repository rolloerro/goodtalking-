import SwiftUI

struct HomeView: View {
    @State private var phrases = PhrasesStore.all
    @AppStorage("isDark") var isDark = false

    var body: some View {
        List {
            Section {
                NavigationLink(destination: PracticeView()) {
                    HStack {
                        Image(systemName: "sparkles")
                        VStack(alignment: .leading) {
                            Text("Практика дня")
                                .font(.headline)
                            Text("Случайные фразы и тренировка")
                                .font(.subheadline)
                                .foregroundColor(.secondary)
                        }
                    }
                }
            }

            Section(header: Text("Категории")) {
                ForEach(Category.allCases, id: \.self) { cat in
                    NavigationLink(destination: CategoryView(category: cat)) {
                        HStack {
                            Text(cat.rawValue)
                            Spacer()
                            Text("\(phrases.filter { $0.category == cat }.count)")
                                .foregroundColor(.secondary)
                        }
                    }
                }
            }

            Section {
                Toggle(isOn: $isDark) {
                    Text("Тёмная тема")
                }
            }

            Section {
                NavigationLink("О приложении") {
                    AboutView()
                }
            }
        }
        .navigationTitle("АНТИСЛЕНГ")
        .listStyle(InsetGroupedListStyle())
    }
}
//
//  HomeView.swift.swift
//  goodtalking
//
//  Created by Vladimir Kopylov on 03/12/2025.
//

