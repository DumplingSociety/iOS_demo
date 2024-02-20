//
//  LandmarkDetail.swift
//  Landmarks
//
//  Created by Xiangwei Li on 2/13/24.
//

import SwiftUI

struct LandmarkDetail: View {
    var landmark: Landmark
    
    var body: some View {
    //    VStack{
        ScrollView{
            MapView(coordinate: landmark.locationCoordinate) // pass the required data to your custom types
                .frame(height: 300)
            
            CircleImage(image: landmark.image) // image
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment:.leading) {
                Text(landmark.name) // tital
                    .font(.title)
                
                HStack{
                    Text(landmark.park)
                        Spacer()
                    Text(landmark.state)
                }
                .font(.subheadline)
                .foregroundColor(.secondary)
                
                Divider()
                
                Text("About \(landmark.name)")
                    .font(.title2)
                Text(landmark.description)
            }
            .padding()
            
        }
        // Finally, call the navigationTitle(_:) modifier to give the navigation bar a title when showing the detail view, and the navigationBarTitleDisplayMode(_:) modifier to make the title appear inline.
        .navigationTitle(landmark.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    LandmarkDetail(landmark: landmarks[0])
}
