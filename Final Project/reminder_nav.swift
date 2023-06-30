//
//  reminder_nav.swift
//  Final Project
//
//  Created by Nicole Shimamoto on 6/29/23.
//

import SwiftUI

struct reminder_nav: View {
    @State private var showInfo = false
    @State private var showInfo1 = false
    @State private var showInfo2 = false
    @State private var water = ""
    @State private var textTitle = "Daily water tracker"
    var body: some View {
        ZStack {
            Color("Color3").edgesIgnoringSafeArea(.all)
            VStack(spacing: 15.0) {
                Text("The weather today is")
                    .font(.title2)
                HStack(spacing: 15.0) {
                    Image("sun")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 80)
                    Image("cloudy")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 80)
                    Image("rainy")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 80)
                    
                }
                Button("sunny") {
                    showInfo.toggle()
                }
                
                if showInfo {
                    
                    Text("Today is a sunny day, make sure to wear lots of sunscreen and reapply when needed!")
                }
                
                
                Button("cloudy") {
                    showInfo1.toggle()
                }
                
                if showInfo1 {
                    Text("Looks like it will be a cloudy day today, make sure to still apply sunscreen!")
                }
                Button("rainy") {
                    showInfo2.toggle()
                }
                
                if showInfo2 {
                    Text("Rainy day today, don't forget to put on sunscreen! UV rays can still penetrate skin on rainy or cloudy days.")
                }
                
                VStack {
                    Text("Daily water tracker (cups)")
                        .font(.title2)
                    TextField("", text: $water)
                        .multilineTextAlignment(.center)
                        .frame(width: 250, height:40)
                            .border(Color.black, width : 0.5)
                        .cornerRadius(2.5)
                        .padding()
                    
                    Button("Enter") {
                        textTitle = "You drank \(water) cups of water!"
                        
        
                    }
                    .buttonStyle(.bordered)
                    Spacer()
                        .frame(height: 25)
                    Image("cup")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 70)
                        
                   
                }
                
                
                }
            .navigationTitle("Luminosity")
                .navigationBarTitleDisplayMode(.inline)
            }
        }
    }
    
    
    
    
    
    struct reminder_nav_Previews: PreviewProvider {
        static var previews: some View {
            reminder_nav()
        }
    }

