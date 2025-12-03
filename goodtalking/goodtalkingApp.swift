//
//  goodtalkingApp.swift
//  goodtalking
//
//  Created by Vladimir Kopylov on 03/12/2025.
//
import SwiftUI

@main
struct goodtalkingApp: App {
    @AppStorage("isDark") private var isDark = false

    var body: some Scene {
        WindowGroup {
            NavigationView {
                HomeView()
            }
            .preferredColorScheme(isDark ? .dark : .light)
        }
    }
}

