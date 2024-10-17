//
//  GridView.swift
//  HWSNotes
//
//  Created by Muhammad Dzaky on 17/10/24.
//

import SwiftUI

struct GridViewEg: DetailView {
    static var viewTitle: String = "GridView"
    static var viewName: String = "Using Grid View"
    
    init() {}
    
    // Layout untuk fixed grid
    let fixLayout = [
        GridItem(.fixed(100)),
        GridItem(.fixed(100))
    ]
    
    // Layout untuk adaptive
    let adaptiveLayout = [
        GridItem(.adaptive(minimum: 100, maximum: 120))
    ]
    
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVGrid(columns: fixLayout, spacing: 10) {
                    ForEach(0..<100) { index in
                        Text("\(index)")
                    }
                    .frame(maxWidth:.infinity)
                    .border(Color.red)
                }
                .border(Color.blue)
                
                Divider()
                
                LazyVGrid(columns: adaptiveLayout, spacing: 10) {
                    ForEach(0..<100) { index in
                        Text("\(index)")
                    }
                    .frame(maxWidth:.infinity)
                    .border(Color.red)
                }
            }
            .navigationTitle("Using Grid View")
        }
    }
}

#Preview {
    GridViewEg()
}
