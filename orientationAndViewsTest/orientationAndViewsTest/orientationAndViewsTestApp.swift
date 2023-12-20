//
//  orientationAndViewsTestApp.swift
//  orientationAndViewsTest
//
//  Created by Bamlak Deju on 9/22/23.
//

import SwiftUI

@main
struct orientationAndViewsTestApp: App {
    @EnvironmentObject var dataStore: DataStore;
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(DataStore())
        }
    }
}
