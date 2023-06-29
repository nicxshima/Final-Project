//
//  ContentView.swift
//  Final Project
//
//  Created by Nicole Shimamoto on 6/27/23.
//

import SwiftUI

struct ContentView: View {
    @State private var name = ""
    @State private var textTitle = "What is your name?"
    var body: some View {
        NavigationStack {
            ZStack {
                Color(red: 255.0, green: 237.0, blue: 225.0)
                VStack(spacing: 25.0) {
                    HStack() {
                        VStack {
                            Text("Hi")
                                .font(.largeTitle)
                                .fontWeight(.bold)
                                .foregroundColor(Color(hue: 0.653, saturation: 0.889, brightness: 0.366))
                                .multilineTextAlignment(.leading)
                            Text("         There!")
                                .font(.largeTitle)
                                .fontWeight(.bold)
                                .foregroundColor(Color(hue: 0.653, saturation: 0.889, brightness: 0.366))
                        }
                        Image("leaf")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 130)
                        
                    }
                    Text("Grow from your glow")
                        .font(.headline)
                        .foregroundColor(Color(hue: 0.561, saturation: 0.433, brightness: 0.931))
                        .multilineTextAlignment(.center)
                    Text("What is your name?")
                        .font(.title2)
                        .foregroundColor(Color(hue: 0.653, saturation: 0.889, brightness: 0.366))
                    TextField("", text: $name)
                        .multilineTextAlignment(.center)
                        .border(Color.blue, width : 0.5)
                        .cornerRadius(2.5)
                        .padding()
                    Button("Submit Name"){
                    textTitle = "Welcome, \(name)!"
                    }
                    .buttonStyle(.bordered)
            }
            }
            .navigationTitle("Luminosity")
            .navigationBarTitleDisplayMode(.inline)
            
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
