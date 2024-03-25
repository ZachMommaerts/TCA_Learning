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
    static let store = Store(initialState: CounterFeature.State()) {
        CounterFeature()
            ._printChanges()
    }
    
    var body: some Scene {
        WindowGroup {
            CounterView(store: TCA_LearningApp.store)
        }
    }
}
