//
//  ModelWeather.swift
//  Weather Update
//
//  Created by Rezaul Islam on 25/6/23.
//

import Foundation
struct ModelWeather : Identifiable{
    var id = UUID()
    var day : String
    var weatherImage: String
    var temperature : Int
}
