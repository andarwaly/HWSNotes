//
//  LearningItem.swift
//  HWSNotes
//
//  Created by Muhammad Dzaky on 16/10/24.
//

import Foundation

struct LearningItem: Codable, Identifiable {
    var id = UUID()
    let title: String
    let imageName: String // icon for symbolizing the learning notes
    let destinationViewName: String // Name of the view to navigate to
}
