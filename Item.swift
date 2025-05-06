//
//  Item.swift
//  MentAi
//
//  Created by Hasan Kılınç on 3.05.2025.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
