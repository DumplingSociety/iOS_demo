//
//  ModelData.swift
//  Landmarks
//  Desc: create a load method that feches JSON data with a given name from the app main budle
//  Created by Xiangwei Li on 2/13/24.
//

import Foundation
//Use observation for storage
//To prepare for the user to control which particular landmarks are favorites, you’ll first store the landmark data using the Observable() macro

@Observable
class ModelData {
    var landmarks: [Landmark] = load("landmarkData.json") //move the landmarks array into the model
}

var landmarks: [Landmark] = load("landmarkData.json") // create an arry of landmarks that ini from landmarkData.json

func load<T: Decodable>(_ filename: String) -> T {
    let data: Data
    
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else {
        fatalError("Couldn't find \(filename) in main bundle.")
    }
    
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't find \(filename) in main bundle.")
    }
    
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
    
    
}
