//
//  ScrollViewEg.swift
//  HWSNotes
//
//  Created by Muhammad Dzaky on 16/10/24.
//

import SwiftUI

struct ScrollViewEg: DetailView {
    static var viewName: String = "ScrollView"
    static var viewTitle: String = "ScrollView Example"
    
    init() {}
    
    var body: some View {
        ScrollView {
            // Disarankan untuk scrollview -> data terload on demand
            LazyVStack {
                ForEach(0..<100) {
                    Text("Hello \($0)")
                }
            }
            // auto ambil space paling banyak -> ngga perlu frame .infinity
            
            ScrollView(.horizontal) {
                LazyHStack(spacing: 10) {
                    ForEach(0..<100) {
                        Text("Hello \($0)")
                            .font(.title)
                    }
                }
            }
        }
    }
}

#Preview { ScrollViewEg() }
