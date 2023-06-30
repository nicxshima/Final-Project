//
//  q3.swift
//  Final Project
//
//  Created by Emi Uzner on 6/30/23.
//

import SwiftUI

struct q3: View {
    var body: some View {
        NavigationStack{
            VStack() {
                Text("Question 3 / 5")
                    .offset(y: -250)
                    .padding()
                Text("How many steps is your ideal skincare routine?")
                    .font(.title)
                    .multilineTextAlignment(.center)
                    .offset(y: -200)
                    .padding()
                
                NavigationLink(destination: q4()) {
                    Text("One")
                        .font(.body)
                        .foregroundColor(Color.black)
                        .multilineTextAlignment(.center)
                        .offset(y: -30)
                        
                }
                .frame(height : 10)
                NavigationLink(destination: q4()) {
                    Text("Two")
                        .foregroundColor(Color.black)
                        .multilineTextAlignment(.center)
                        .offset(y: -10)
                        
                }
                NavigationLink(destination: q4()) {
                    Text("Three")
                        .foregroundColor(Color.black)
                        .multilineTextAlignment(.center)
                        .offset(y: 10)
                }
                NavigationLink(destination: q4()) {
                    Text("Four")
                        .foregroundColor(Color.black)
                        .multilineTextAlignment(.center)
                        .offset(y: 30)
                }
                NavigationLink(destination: q4()) {
                    Text("5 or more")
                        .foregroundColor(Color.black)
                        .multilineTextAlignment(.center)
                        .offset(y: 50)
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity) // Expand the VStack to fill the whole view
            .background(Color("Color1").ignoresSafeArea()) // Set the background color and ignore safe area insets
        }
    }
    
}


struct q3_Previews: PreviewProvider {
    static var previews: some View {
        q3()
    }
}
