//
//  AppFeatureTests.swift
//  TCA_LearningTests
//
//  Created by Zach Mommaerts on 3/27/24.
//

import ComposableArchitecture
import XCTest


final class AppFeatureTests: XCTestCase {
    @MainActor
    func testIncrementInFirstTab() async {
        let store = TestStore(initialState: AppFeature.State()) {
            AppFeature()
        }
        
        await store.send(\.tab1.incrementButtonTapped) {
            $0.tab1.count = 1
        }
    }
}
