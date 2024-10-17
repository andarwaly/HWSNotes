//
//  HierarchyCodableView.swift
//  HWSNotes
//
//  Created by Muhammad Dzaky on 16/10/24.
//

import SwiftUI


// MARK: Struct that match the json format
struct User: Codable {
    let name: String
    let address: Address
}

struct Address: Codable {
    let street: String
    let city: String
}

struct HierarchyCodableView: DetailView {
    static var viewTitle: String = "Hierarchy Codable"
    static var viewName: String = "Working with hierarchical Codable data"
    
    init () {}
    
    var body: some View {
        Button("Decode JSON") {
            // Formatnya JSON
            let input = """
            {
                "name": "Taylor Swift",
                "address": {
                    "street": "555, Taylor Swift Avenue",
                    "city": "Nashville"
                }
            }
            """
            // Decode the JSON
            let data = Data(input.utf8)
            let decoder = JSONDecoder()
            if let user = try? decoder.decode(User.self, from: data) {
                print(user.address.street)
            }
        }
    }
}
