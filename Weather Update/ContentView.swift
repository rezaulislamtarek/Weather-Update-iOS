//
//  ContentView.swift
//  Weather Update
//
//  Created by Rezaul Islam on 20/6/23.
//

import SwiftUI

struct ContentView: View {
     
    var body: some View {
        ZStack{
            BackgroundView(isNight: true)
            
            VStack {
                CityView()
                
                MainWeatherView()
                
                HStack(spacing:20){
                    WeatherDayView(dayOfWeek: "TUE", imageName: "cloud.sun.fill", temperature: 73)
                    WeatherDayView(dayOfWeek: "WED", imageName: "cloud.sun.rain.fill", temperature: 53)
                    WeatherDayView(dayOfWeek: "THE", imageName: "cloud.sun.fill", temperature: 70)
                    WeatherDayView(dayOfWeek: "FRI", imageName: "wind.snow", temperature: 43)
                    WeatherDayView(dayOfWeek: "SAT", imageName: "cloud.sun.fill", temperature: 77)
                    
                }
                
                Spacer()
                
                Button{
                    
                }label: {
                    ButtonTextView()
                }
                    
                Spacer()
            }
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 12")
    }
}

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

struct BackgroundView: View {
    var isNight:Bool
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [.blue, Color("lightBlue")]), startPoint: .topLeading, endPoint: .bottomTrailing  )
            .edgesIgnoringSafeArea(.all)
    }
}

struct CityView: View {
    var body: some View {
        Text("Dhaka, BD")
            .foregroundColor(.white)
            .font(.title)
            .fontWeight(.bold)
            .padding()
    }
}

struct MainWeatherView: View {
    var body: some View {
        VStack(spacing:10){
            Image(systemName: "cloud.sun.fill")
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 180, height: 180)
            Text("76°")
                .font(.system(size: 50, weight: .medium))
                .foregroundColor(.white)
        }.padding(.bottom,40)
    }
}

struct ButtonTextView: View {
    var body: some View {
        Text("Change Day Time")
            .foregroundColor(.blue)
            .fontWeight(.bold)
            .font(.title3)
            .frame(width: 250, height: 60)
            .background(.white)
            .cornerRadius(10, antialiased: false)
    }
}
