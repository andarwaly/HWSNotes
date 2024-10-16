//
//  DetailViewFactory.swift
//  HWSNotes
//
//  Created by Muhammad Dzaky on 16/10/24.
//

import SwiftUI

// MARK: - Factory to Create Detail Views
class DetailViewFactory {
    // Dictionary to map view names to the corresponding view types
    @MainActor
    private static let viewMappings: [String: any DetailView.Type] = [
        ResizingImageViews.viewName: ResizingImageViews.self
    ]

    // Method to create a view dynamically based on the view name
    @MainActor
    static func createView(for viewName: String) -> AnyView {
        if let viewType = viewMappings[viewName] {
            // Create the view using the initializer from the protocol
            return AnyView(viewType.init())
        } else {
            return AnyView(Text("View not found"))
        }
    }

    // Method to return all available detail views
    @MainActor
    static func getAllDetailViews() -> [any DetailView.Type] {
        return Array(viewMappings.values)
    }
}
