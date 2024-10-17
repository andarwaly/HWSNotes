//
//  ContentView.swift
//  HWSNotes
//
//  Created by Muhammad Dzaky on 16/10/24.
//

import SwiftUI

// MARK: - Home View (Content View)
struct ContentView: View {
    @StateObject private var viewModel = HomeViewModel()

    var body: some View {
        NavigationStack {
            VStack {
                // Search Bar Component
                SearchBarView(text: $viewModel.searchText)
                    .padding()

                // List or grid of items with navigation
                ScrollView {
                    LazyVGrid(columns: [GridItem(.adaptive(minimum: 154))], spacing: 8) {
                        ForEach(viewModel.filteredItems) { item in
                            NavigationLink(destination: DetailViewFactory.createView(for: item.destinationViewName)) {
                                CardView(item: item)
                            }
                        }
                    }
//                    .padding()
                }
            }
            .navigationTitle("Learning Notes")
        }
    }
}

#Preview {
    ContentView()
}
