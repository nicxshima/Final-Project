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
            VStack(spacing: 30.0) {
                Image("leaf")
                Text("Hi there!")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(Color(hue: 0.653, saturation: 0.889, brightness: 0.366))
                    
                Text("What is your name?")
                TextField("", text: $name)
                    .multilineTextAlignment(.center)
                    .border(Color.blue, width : 0.5)
                    .cornerRadius(2.5)
                    .padding()
        }
            
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
