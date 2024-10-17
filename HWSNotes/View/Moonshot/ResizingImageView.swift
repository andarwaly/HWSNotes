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
            ScrollView {
                VStack {
                    // Gambar tidak adaptive -> di crop
                    Image("Image/PFP")
                        .frame(width: 120, height: 180)
                        .clipped()
                        .border(Color.red, width: 1)
                    
                    // Gambar adaptive tapi scalling tidak proper (bisa gepeng)
                    Image("Image/PFP")
                        .resizable()
                        .clipShape(Circle())
                        .frame(width: 120, height: 180)
                        .border(Color.red, width: 1)
                    
                    // Scale to fit -> Gambar akan masuk ke container full meskipun menyisakan space
                    Image("Image/PFP")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 120, height: 180)
                        .border(Color.red, width: 1)
                    
                    // Scale to fill -> Gambar akan masuk ke container full tapi akan ada overflow
                    Image("Image/PFP")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 120, height: 180)
                        .border(Color.red, width: 1)
                    
                    // .containerRelativeFrame -> Bikin framenya berapa % dari parent imagenya
                    Image("Image/PFP")
                        .resizable()
                        .scaledToFit()
                        .containerRelativeFrame(.horizontal) { size, axis in
                            size * 0.8
                        }
                        .border(Color.red, width: 1)
                }
                .padding(16)
                .frame(maxWidth: .infinity)
            }
            .frame(maxWidth: .infinity)
            .navigationTitle("Resizing Image")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    ResizingImageViews()
}
