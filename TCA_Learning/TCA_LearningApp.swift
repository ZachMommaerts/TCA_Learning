//
//  TCA_LearningApp.swift
//  TCA_Learning
//
//  Created by Zach Mommaerts on 3/24/24.
//

import ComposableArchitecture
import SwiftUI

@main
struct TCA_LearningApp: App {
    static let store = Store(initialState: AppFeature.State()) {
        AppFeature()
    }
    
    var body: some Scene {
        WindowGroup {
            AppView(store: TCA_LearningApp.store)
        }
    }
}
