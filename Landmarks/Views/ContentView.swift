//
//  ContentView.swift
//  Landmarks
//
//  Created by Xiangwei Li on 2/11/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            MapView()
                .frame(height: 300)
            CircleImage()
                .offset(y: -130)
                .padding(.bottom, -130)
            VStack(alignment:.leading) {
                Text("Turtle Rock")
                    .font(.title)
                HStack{
                    Text("Joshua Tree National Park")
                        .font(.subheadline)
                    Spacer()
                    Text("Cali")
                        .font(.subheadline)
                    
                }
                .font(.subheadline)
                .foregroundColor(.secondary)
                Divider()
                
                Text("About Turtle Rock")
                    .font(.title2)
                Text("Descriptive text goes here.")
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
