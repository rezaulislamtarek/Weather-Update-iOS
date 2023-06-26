//
//  DetailsWeatherView.swift
//  Weather Update
//
//  Created by Rezaul Islam on 25/6/23.
//

import SwiftUI

struct DetailsWeatherView: View {
    var weatherData: ModelWeather
    @State var isNight :Bool = false
    var body: some View {
        ZStack {
            BackgroundView(isNight: $isNight)
            VStack{
                WeatherDayView(dayOfWeek: weatherData.day, imageName: weatherData.weatherImage, temperature: weatherData.temperature)
                
                Text(weatherData.details)
                    .font(.title2)
                    .foregroundColor(.white)
                    .padding()
        
                
            }
        }
    }
}

struct DetailsWeatherView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsWeatherView(weatherData: WeatherRepo.lastSixDayData[0])
    }
}
