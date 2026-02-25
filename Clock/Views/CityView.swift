//
//  CityView.swift
//  Clock
//
//  Created by Sadie Mabbott on 2026-02-25.
//


import SwiftUI

struct CityView: View {
    // Stored Properties
    let timeZoneOffset: String
    let city: String
    let time: String
    let amOrPm: String
    
    
    var body: some View {
        // Ottawa
        HStack {
            // Left Side
            VStack(alignment: .leading) {
                Text("Today, \(timeZoneOffset)HRS")
                Text(city)
                    .font(.system(.largeTitle, design: .default, weight: .thin))
            }
            
            Spacer()
            
            // Right Side
            Text(time)
                .font(.system(size: 64.0, weight: .thin, design: .default))
            Text(amOrPm)
                .font(.system(.largeTitle, design: .default, weight: .thin))
            
        }

    }
}