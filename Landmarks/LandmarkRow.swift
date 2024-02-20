//
//  LandmarkRow.swift
//  Landmarks
//
//  Created by Xiangwei Li on 2/13/24.
//

import SwiftUI

struct LandmarkRow: View {
    var landmark: Landmark
    var body: some View {
        HStack {
            landmark.image // image
                .resizable()
                .frame(width: 50, height: 50)
            Text(landmark.name) // text
            
            Spacer()
        }
    }
}

//#Preview("Turtle Rock") {
//    LandmarkRow(landmark: landmarks[0])
//}
//
//#Preview("Salmon") {
//    LandmarkRow(landmark: landmarks[1])
//}

#Preview {
    Group{
    LandmarkRow(landmark: landmarks[0])
    LandmarkRow(landmark: landmarks[1])
    }
}
