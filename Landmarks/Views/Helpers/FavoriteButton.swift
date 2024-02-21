//
//  FavoriteButton.swift
//  Landmarks
//
//  Created by Xiangwei Li on 2/19/24.
//

import SwiftUI

struct FavoriteButton: View {
    //Add an isSet binding that indicates the button’s current state, and provide a constant value for the preview.
    @Binding var isSet:Bool
    
    var body: some View {
        // create a Button with an action that toggles the isSet state, and that changes its appearance based on the state
        Button {
            isSet.toggle()
        } label: {
            Label("Toggle Favorite", systemImage: isSet ? "star.fill" : "star")
                .labelStyle(.iconOnly)
                .foregroundStyle(isSet ? .yellow : .gray)
        }
    }
}

#Preview {
    FavoriteButton(isSet: .constant(true))
}
