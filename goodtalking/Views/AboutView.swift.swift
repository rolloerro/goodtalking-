import SwiftUI

struct AboutView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 12) {
                Text("АНТИСЛЕНГ").font(.title).bold()
                Text("Практикум для замены разговорных, неуверенных или конфликтных фраз на уверенные, профессиональные формулировки.")
                Divider()
                Text("Как пользоваться")
                    .font(.headline)
                Text("1. Выберите категорию\n2. Изучите пары фраз «Было → Стало»\n3. Практикуйтесь ежедневно\n4. Отмечайте фразы как запомненные")
                Divider()
                Text("Автор: Владимир Копылов")
                Spacer()
            }
            .padding()
        }
        .navigationTitle("О приложении")
    }
}
//
//  AboutView.swift.swift
//  goodtalking
//
//  Created by Vladimir Kopylov on 03/12/2025.
//

