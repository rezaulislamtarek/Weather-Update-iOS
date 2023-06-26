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
    var details: String = "Formatting your resume properly is an important part of the job application process. At some point in your job search, you may be asked to submit a resume in plain text, If you are unsure of what a plain text resume is, it's a good idea to know what an employer is looking for when they ask for one. In this article, we explain what a plain text resume is and how to format one correctly with a template, example and tips."
}
