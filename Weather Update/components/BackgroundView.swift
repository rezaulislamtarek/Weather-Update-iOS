//
//  BackgroundView.swift
//  Weather Update
//
//  Created by Rezaul Islam on 25/6/23.
//

import SwiftUI

struct BackgroundView: View {
    @Binding var isNight:Bool
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [ isNight ? .black : .blue ,  Color("lightBlue")]), startPoint: .topLeading, endPoint: .bottomTrailing  )
            .edgesIgnoringSafeArea(.all)
    }
}
