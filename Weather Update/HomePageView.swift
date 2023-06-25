//
//  ContentView.swift
//  Weather Update
//
//  Created by Rezaul Islam on 20/6/23.
//

import SwiftUI

struct HomePageView: View {
    @State private var isNight:Bool = true
    let weatherDataList = WeatherRepo.lastSixDayData
    var body: some View {
        ZStack{
            BackgroundView(isNight: $isNight)
            
            VStack {
                CityView()
                
                MainWeatherView(isNight: $isNight)
                
                
                ScrollView(.horizontal, showsIndicators: false){
                    LazyHStack(spacing: 15){
                        ForEach(weatherDataList ,id: \.id){ weather in
                            WeatherDayView(dayOfWeek: weather.day, imageName: weather.weatherImage, temperature: weather.temperature)
                        }
                    }
                }
                
                .padding(.horizontal, 20)
                .fixedSize(horizontal: false, vertical: true)
                
                
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
