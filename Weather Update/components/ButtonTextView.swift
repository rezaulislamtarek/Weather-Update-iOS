//
//  ButtonTextView.swift
//  Weather Update
//
//  Created by Rezaul Islam on 25/6/23.
//

import SwiftUI

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

