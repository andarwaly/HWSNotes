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
    
    let GridLayout = [
        GridItem(.adaptive(minimum: 120, maximum: 168), spacing: 16)
    ]

    var body: some View {
        NavigationStack {
            VStack {
                // Search Bar Component
                SearchBarView(text: $viewModel.searchText)
                    .padding()

                // List or grid of items with navigation
                ScrollView {
                    LazyVGrid(columns: GridLayout, spacing: 16) {
                        ForEach(viewModel.filteredItems) { item in
                            NavigationLink(destination: DetailViewFactory.createView(for: item.destinationViewName)) {
                                CardView(item: item)
                            }
                        }
                        .frame(maxWidth: .infinity)
                    }
                    .padding(16)
                }
            }
            .navigationTitle("HWS Notes")
        }
    }
}

#Preview {
    ContentView()
}
