//
//  EunoiaApp.swift
//  Eunoia
//
//  Created by Ivy Sham on 15/7/2025.
//

import SwiftUI
import SwiftData

@main
struct EunoiaApp: App {
    var body: some Scene {
        WindowGroup {
            HomePage()
                .modelContainer(for: Workout.self)
        }
    }
}
