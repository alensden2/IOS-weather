//
//  Item.swift
//  todotutorial
//
//  Created by Alen John on 2024-09-07.
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
