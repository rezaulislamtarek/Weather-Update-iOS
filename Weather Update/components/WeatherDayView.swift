//
//  WeatherDayView.swift
//  Weather Update
//
//  Created by Rezaul Islam on 25/6/23.
//

import SwiftUI

struct WeatherDayView: View {
    
    var dayOfWeek:String
    var imageName:String
    var temperature : Int
    
    var body: some View {
        VStack{
            Text(dayOfWeek)
                .foregroundColor(.white)
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
            Text("\(temperature)°")
                .font(.system(size: 28, weight: .medium))
                .foregroundColor(.white)
        }
    }
}
