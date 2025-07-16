//
//  Mood.swift
//  Eunoia
//
//  Created by Anushka Karthikeyan on 7/16/25.
//

import Foundation
import SwiftData

@Model
class Mood{
    var date: Date
    var emoji: String
    
    init(date: Date, emoji: String) {
        self.date = date
        self.emoji = emoji
    }
}
