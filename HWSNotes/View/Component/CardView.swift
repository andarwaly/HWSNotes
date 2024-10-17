//
//  CardView.swift
//  HWSNotes
//
//  Created by Muhammad Dzaky on 16/10/24.
//

import SwiftUI

// MARK: - Card View for Each Learning Item
struct CardView: View {
    let item: LearningItem

    var body: some View {
        // Card container
        VStack (alignment: .leading, spacing: 0) {
            // Image container
            VStack {
                Image(systemName: item.imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 40, height: 40)
            }
            .padding(44)
            .frame(maxWidth: .infinity)
            .background(Color(red: 0.97, green: 0.97, blue: 0.97))
            
            // Text container
            VStack (alignment: .leading) {
                Text(item.title)
                    .font(.headline)
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)
            }
            .padding(10)
            .frame(maxHeight: .infinity, alignment: .topLeading)
        }
        .frame(maxWidth: .infinity)
        .background(Color.white)
        .cornerRadius(10)
        .shadow(color:Color.black.opacity(0.3) ,radius: 2)
    }
}

#Preview {
    CardView(item: .init(title: "Hello", imageName: "person.fill", destinationViewName: "Unknown"))
}
