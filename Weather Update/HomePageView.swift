//
//  ContentView.swift
//  Weather Update
//
//  Created by Rezaul Islam on 20/6/23.
//

import SwiftUI

struct HomePageView: View {
    @State private var isNight:Bool = true
    var body: some View {
        ZStack{
            BackgroundView(isNight: $isNight)
            
            VStack {
                CityView()
                
                MainWeatherView(isNight: $isNight)
                
                HStack(spacing:20){
                    WeatherDayView(dayOfWeek: "TUE", imageName: "cloud.sun.fill", temperature: 73)
                    WeatherDayView(dayOfWeek: "WED", imageName: "cloud.sun.rain.fill", temperature: 53)
                    WeatherDayView(dayOfWeek: "THE", imageName: "cloud.sun.fill", temperature: 70)
                    WeatherDayView(dayOfWeek: "FRI", imageName: "wind.snow", temperature: 43)
                    WeatherDayView(dayOfWeek: "SAT", imageName: "cloud.sun.fill", temperature: 77)
                    
                }
                
                Spacer()
                
                Button{
                    isNight.toggle()
                }label: {
                    ButtonTextView()
                }
                    
                Spacer()
            }
            
        }
        
    }
}

struct HomePageView_Previews: PreviewProvider {
    static var previews: some View {
        HomePageView()
    }
}
