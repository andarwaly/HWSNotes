//
//  ResizingImageView.swift
//  HWSNotes
//
//  Created by Muhammad Dzaky on 16/10/24.
//

import SwiftUI

// MARK: - Resizing Image to fit the available space
struct ResizingImageViews: DetailView {
    static let viewName: String = "Resizing Image Views"
    static let viewTitle: String = "Resizing Image"
    
    // Required initializer as per the protocol
    init() {}
    
    var body: some View {
        NavigationStack {
            VStack {
                
            }
            .navigationTitle("Resizing Image")
        }
    }
}

#Preview {
    ResizingImageViews()
}
