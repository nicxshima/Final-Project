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
                        .frame(width: 250, height:40)
                            .border(Color.blue, width : 0.5)
                        .cornerRadius(2.5)
                        .padding()
                    Button("Submit Name"){
                    textTitle = "Welcome, \(name)!"
                    /*
                    Once user submits button, it takes them to "home_nav" view
                    Reference: https://www.youtube.com/watch?v=vQ0HhIerTsw
                    */

                    let window = UIApplication
                        .shared
                        .connectedScenes
                        .flatMap { ($0 as? UIWindowScene)?.windows ?? [] }
                        .first { $0.isKeyWindow }

                        window?.rootViewController = UIHostingController(rootView: home_nav(name_: name))
                            window?.makeKeyAndVisible()
                    }
                    .buttonStyle(.bordered)
            }
            }
            .navigationTitle("Luminosity")
            .navigationBarTitleDisplayMode(.inline)
            Text("Question 1 / 5")
                .padding()
            Spacer()
            Text("What is your skin type?")
                .font(.title)
                .padding()
            Spacer()
            
            
            
            
        }
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



    
    
    
}
