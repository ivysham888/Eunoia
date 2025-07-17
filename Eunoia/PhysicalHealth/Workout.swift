//
//  Workout.swift
//  Eunoia
//
//  Created by Amanda Martin on 7/16/25.
//

import Foundation
import SwiftData

@Model
class Workout {
    var title: String
    var isImportant: Bool

    // The initializer must be inside the class definition
    init(title: String, isImportant: Bool = false) {
        self.title = title
        self.isImportant = isImportant
    }
}
