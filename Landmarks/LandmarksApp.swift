//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Xiangwei Li on 2/11/24.
//

import SwiftUI

@main
struct LandmarksApp: App {
    //Update the LandmarksApp to create a model instance and supply it to ContentView using the environment(_:) modifier.
    @State private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(modelData)
        }
    }
}
