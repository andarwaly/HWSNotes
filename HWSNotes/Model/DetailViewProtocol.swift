//
//  DetailViewProtocol.swift
//  HWSNotes
//
//  Created by Muhammad Dzaky on 16/10/24.
//

import SwiftUI

// MARK: - Protocol for Detail Views
@MainActor
protocol DetailView: View {
    init()
    static var viewName: String { get }
    static var viewTitle: String { get }
}
