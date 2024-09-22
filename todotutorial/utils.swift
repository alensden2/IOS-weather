//
//  utils.swift
//  todotutorial
//
//  Created by Alen John on 2024-09-21.
//

import Foundation

func getCurrentTimeAndDay()->(time: String, day: String) {
    let now = Date()
    let timeFormatter = DateFormatter()
    timeFormatter.timeStyle = .medium
    timeFormatter.dateStyle = .none
    
    let dayFormatter = DateFormatter()
    dayFormatter.dateFormat = "EEEE"
    
    let currentTime = timeFormatter.string(from: now)
    let currentDay = dayFormatter.string(from: now)
    
    return (currentTime, currentDay)
}
