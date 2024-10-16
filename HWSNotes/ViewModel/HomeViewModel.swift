//
//  HomeViewModel.swift
//  HWSNotes
//
//  Created by Muhammad Dzaky on 16/10/24.
//

import SwiftUI

// MARK: - ViewModel for Home View
@MainActor
class HomeViewModel: ObservableObject {
    @Published var searchText: String = ""
    @Published private(set) var items: [LearningItem] = []

    init() {
        generateItems()
    }

    private func generateItems() {
        // Ensure this runs on the main thread
        items = DetailViewFactory.getAllDetailViews().map { viewType in
            LearningItem(title: viewType.viewTitle, imageName: "note.text", destinationViewName: viewType.viewName)
        }
    }

    // Filtered items based on the search text
    var filteredItems: [LearningItem] {
        if searchText.isEmpty {
            return items
        } else {
            return items.filter { $0.title.lowercased().contains(searchText.lowercased()) }
        }
    }
}
