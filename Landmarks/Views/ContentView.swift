//
//  ContentView.swift
//  Landmarks
//
//  Created by Xiangwei Li on 2/11/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList()
    }
}

#Preview {
    ContentView()
        .environment(ModelData())
}
