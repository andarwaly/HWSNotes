//
//  NavLinkView.swift
//  HWSNotes
//
//  Created by Muhammad Dzaky on 16/10/24.
//

import SwiftUI

struct NavLinkView: DetailView {
    static var viewTitle: String = "NavLink View"
    static var viewName: String = "Using Navigation Link"
    
    init() {}
    
    var body: some View {
        NavigationStack {
            VStack (spacing: 24) {
                // Cara 1
                NavigationLink("Tap Me") {
                    Text("Detail View")
                }
                
                // Custom Label
                NavigationLink {
                    Text("Detail View 2")
                } label: {
                    HStack {
                        Text("Tap Me")
                        Image(systemName: "arrow.2.circlepath.circle")
                    }
                    .padding()
                    .foregroundStyle(.white)
                    .frame(width: 240, height: 40)
                    .background(Color.blue)
                }
                
                // Combo sama list
                List (0..<5) { index in
                    NavigationLink("List Item \(index)") {
                        Text("Detail View \(index)")
                    }
                }
            }
            .navigationTitle("Using Navigation Link")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}


#Preview {
    NavLinkView()
}
