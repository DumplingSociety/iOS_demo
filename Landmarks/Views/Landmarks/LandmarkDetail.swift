//
//  LandmarkDetail.swift
//  Landmarks
//
//  Created by Xiangwei Li on 2/13/24.
//

import SwiftUI

struct LandmarkDetail: View {
    
    @Environment(ModelData.self) var modelData
    
    var landmark: Landmark
    // compute the index of the input landmark by comparing it with the model data.
    var landmarkIndex: Int {
           modelData.landmarks.firstIndex(where: { $0.id == landmark.id })!
       }
    
    
    var body: some View {
        //Inside the body property, add the model data using a Bindable wrapper. Embed the landmark’s name in an HStack with a new FavoriteButton; provide a binding to the isFavorite property with the dollar sign ($).
        @Bindable var modelData = modelData
        
        ScrollView{
            MapView(coordinate: landmark.locationCoordinate) // pass the required data to your custom types
                .frame(height: 300)
            
            CircleImage(image: landmark.image) // image
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment:.leading) {
                HStack{
                    Text(landmark.name)
                        .font(.title)
                    FavoriteButton(isSet: $modelData.landmarks[landmarkIndex].isFavorite)
                }
//                Text(landmark.name) // tital
//                    .font(.title)
                
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
    //LandmarkDetail(landmark: landmarks[0])
    LandmarkDetail(landmark: ModelData().landmarks[0])
}
