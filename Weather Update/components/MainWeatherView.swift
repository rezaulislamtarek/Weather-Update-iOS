//
//  MainWeatherView.swift
//  Weather Update
//
//  Created by Rezaul Islam on 25/6/23.
//

import SwiftUI

struct MainWeatherView: View {
    @Binding var isNight: Bool
    var body: some View {
        VStack(spacing:10){
            Image(systemName: isNight ? "cloud.moon.fill" : "cloud.sun.fill" )
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 180, height: 180)
            Text(isNight ? "45°" : "74°")
                .font(.system(size: 50, weight: .medium))
                .foregroundColor(.white)
        }.padding(.bottom,40)
    }
}
