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
            LinearGradient(gradient: Gradient(colors: [.blue, Color("lightBlue")]), startPoint: .topLeading, endPoint: .bottomTrailing  )
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Text("Dhaka, BD")
                    .foregroundColor(.white)
                    .font(.title)
                    .fontWeight(.bold)
                    .padding()
                
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
                    Text("Change Day Time")
                        .foregroundColor(.blue)
                        .fontWeight(.bold)
                        .font(.title3)
                        .frame(width: 250, height: 60)
                        .background(.white)
                        .cornerRadius(10, antialiased: false)
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
