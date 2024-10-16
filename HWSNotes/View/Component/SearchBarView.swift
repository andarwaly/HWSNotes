//
//  SearchBarView.swift
//  HWSNotes
//
//  Created by Muhammad Dzaky on 16/10/24.
//

import SwiftUI

// MARK: - SearchBar View
struct SearchBarView: View {
    @Binding var text: String

    var body: some View {
        HStack {
            TextField("Search...", text: $text)
                .padding(7)
                .background(Color(.systemGray6))
                .cornerRadius(8)
        }
        .padding(.horizontal)
    }
}
