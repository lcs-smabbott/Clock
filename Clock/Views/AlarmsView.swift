//
//  AlarmsView.swift
//  Clock
//
//  Created by Ella Sehn on 2026-02-24.
//

import SwiftUI

struct AlarmsView: View {
    var body: some View {
        NavigationStack {
            VStack (alignment: .leading) {
                Text("Sleep | Wake Up")
                    .padding(.horizontal)
                ExtractedView(time: "7:00", amOrPm: "AM")
                ExtractedView(time: "8:15", amOrPm: "AM")
                ExtractedView(time: "9:00", amOrPm: "AM")
                ExtractedView(time: "9:15", amOrPm: "AM")
            }
            .navigationTitle("Alarms")
            .toolbar {
                
                ToolbarItem(placement: .topBarLeading) {
                    
                    Button("Edit") {
                        // Does nothing right now
                    }
                    
                }
                
                ToolbarItem(placement: .primaryAction) {
                    Button {
                    } label: {
                        Image(systemName: "plus")
                    }
                }
            }
        }
    }
}

#Preview {
    LandingView()
}

struct ExtractedView: View {
    
    let time: String
    let amOrPm: String
    
    var body: some View {
        HStack {
            //left side
            Text(time)
                .font(.system(size: 64.0, weight: .thin, design: .default))
            Text(amOrPm)
                .font(.system(.largeTitle, design: .default, weight: .thin))
            
            Spacer()
            
            //Right side
            Toggle("", isOn: Binding.constant(true))
        }
        .padding(.horizontal)
        .tint(.green)
    }
}
