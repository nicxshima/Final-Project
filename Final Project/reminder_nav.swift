//
//  reminder_nav.swift
//  Final Project
//
//  Created by Nicole Shimamoto on 6/29/23.
//

import SwiftUI

struct reminder_nav: View {
    @State private var buttonText = "Hi"
    var body: some View {
        ZStack {
            Color("Color3").edgesIgnoringSafeArea(.all)
            VStack {
                Text("The weather today is")
                    .font(.title2)
                HStack {
                    Text(buttonText)
                    Button(action: {
                        buttonText = "Hi"}) {
                            Text("bye")
                        }
                    
                }
            }
        }
    }
    
    
    
    
    
    struct reminder_nav_Previews: PreviewProvider {
        static var previews: some View {
            reminder_nav()
        }
    }
}
