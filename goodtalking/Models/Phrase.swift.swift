import Foundation

struct Phrase: Identifiable, Codable {
    let id: UUID
    let original: String
    let improved: String
    let category: Category
    var learned: Bool = false

    init(id: UUID = UUID(), original: String, improved: String, category: Category, learned: Bool = false) {
        self.id = id
        self.original = original
        self.improved = improved
        self.category = category
        self.learned = learned
    }
}

enum Category: String, CaseIterable, Codable {
    case confidence = "Уверенность"
    case conflict = "Конфликты"
    case business = "Деловая речь"
}
//
//  Phrase.swift.swift
//  goodtalking
//
//  Created by Vladimir Kopylov on 03/12/2025.
//

