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
        VStack (alignment: .leading) {
            VStack {
                Image(systemName: item.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(maxWidth: .infinity, maxHeight: 40)
                    .padding()
            }
            .padding(24)
            .background(Color(red: 0.97, green: 0.97, blue: 0.97))
            
            Text(item.title)
                .font(.headline)
                .multilineTextAlignment(.leading)
                .padding(.horizontal, 8)
                .padding(.bottom, 8)
        }
        .frame(maxWidth: .infinity)
        .background(Color.white)
        .cornerRadius(10)
        .shadow(color:Color.black.opacity(0.3) ,radius: 2)
        .padding()
    }
}
