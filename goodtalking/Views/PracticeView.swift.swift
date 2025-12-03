import SwiftUI

struct PracticeView: View {
    @State private var all = PhrasesStore.all
    @State private var current: Phrase = PhrasesStore.all.randomElement()!
    @State private var showImproved = false

    var body: some View {
        VStack(spacing: 20) {
            Text("Практика")
                .font(.title2)
                .padding(.top)

            VStack(spacing: 12) {
                Text("Было:")
                    .foregroundColor(.secondary)
                Text(current.original)
                    .font(.title3)
                    .multilineTextAlignment(.center)

                if showImproved {
                    Divider()
                    Text("Стало:")
                        .foregroundColor(.secondary)
                    Text(current.improved)
                        .font(.title3)
                        .multilineTextAlignment(.center)
                }
            }
            .padding()
            .frame(maxWidth: .infinity)
            .background(.regularMaterial)
            .cornerRadius(14)

            HStack(spacing: 12) {
                Button(action: {
                    showImproved.toggle()
                }) {
                    Text(showImproved ? "Скрыть" : "Показать")
                        .frame(maxWidth: .infinity)
                }
                .buttonStyle(.bordered)

                Button("Следующая") {
                    current = all.randomElement()!
                    showImproved = false
                }
                .buttonStyle(.borderedProminent)
            }
            .padding(.horizontal)

            Spacer()
        }
        .padding()
    }
}
//
//  PracticeView.swift.swift
//  goodtalking
//
//  Created by Vladimir Kopylov on 03/12/2025.
//

