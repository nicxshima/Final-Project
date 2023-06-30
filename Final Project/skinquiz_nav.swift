//
//  skinquiz_nav.swift
//  Final Project
//
//  Created by Nicole Shimamoto on 6/29/23.
//

import SwiftUI

struct skinquiz_nav: View {
    var body: some View {
        Text("Question 1 / 5")
            .padding()
        Spacer()
        Text("What is your skin type?")
            .font(.title)
            .padding()
        Spacer()

        VStack {
            Text("Dry")
                .padding(6)
                .border(Color.green, width: 2)
            Text("Normal")
                .padding(6)
                .border(Color.green, width : 2)
            Text("Oily")
                .padding(6)
                .border(Color.green, width: 2)
            Text("Combination")
                .padding(6)
                .border(Color.green, width: 2)
            Text("Sensitive")
                .padding(6)
                .border(Color.green, width: 2)
                Button("Next") { 
                
            }
        } 
    }
    
    struct skinquiz_nav_Previews: PreviewProvider {
        static var previews: some View {
            skinquiz_nav()
        }
    }
}
