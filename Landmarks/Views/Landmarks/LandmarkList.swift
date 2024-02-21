//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Xiangwei Li on 2/13/24.
//

import SwiftUI

struct LandmarkList: View {
    //In LandmarkList, add an @Environment property wrapper to the view, and an environment(_:) modifier to the preview.
    @Environment(ModelData.self) var modelData
    // add a filter
    // State is a value, or a set of values, that can change over time, and that affects a view’s behavior, content, or layout. You use a property with the @State attribute to add state to a view.
    @State private var showFavoritesOnly = false
    
    // Compute a filtered version of the landmarks list by checking the showFavoritesOnly property and each landmark.isFavorite value.
    var filterdLandmarks: [Landmark] {
        modelData.landmarks.filter { landmark in // use modelData as the data when filtering landmarsk
    //    landmarks.filter { landmark in
            (!showFavoritesOnly || landmark.isFavorite)
        }
    }
    
    // add a control to toggle the state
    var body: some View {
        NavigationSplitView{ //takes a second input thats a placeholder for the view that appears after someone makes a selection
            // filterdLandmarks, Use the filtered version of the list of landmarks in the List.
            //   List(filterdLandmarks) { landmark in //dynamically - generated list , this
            //  creates one LandmarRow for each element in the array
            List {
                //Add a Toggle view as the first child of the List view, passing a binding to showFavoritesOnly.
                Toggle(isOn:$showFavoritesOnly){
                    Text("Favorites only")
                }
                ForEach(filterdLandmarks) { landmark in
                    NavigationLink{
                        LandmarkDetail(landmark: landmark) //pass the current landmark to the destination LandmarkDetail.
                    } label: {
                        LandmarkRow(landmark: landmark)
                    }
                }
            }
            .animation(.default, value:filterdLandmarks)
            .navigationTitle("Landmarks")
        } detail: {
            Text("Select a landmark")
        }
    }
}

#Preview {
    LandmarkList()
}
