//
//  q4.swift
//  Final Project
//
//  Created by Emi Uzner on 6/30/23.
//

import SwiftUI

struct q4: View {
    var body: some View {
        NavigationStack{
            VStack() {
                Text("Question 4 / 5")
                    .offset(y: -250)
                    .padding()
                Text("What is your budget?")
                    .font(.title)
                    .multilineTextAlignment(.center)
                    .offset(y: -200)
                    .padding()
                
                NavigationLink(destination: q5()) {
                    Text("$ ($1 - $25)")
                        .font(.body)
                        .foregroundColor(Color.black)
                        .multilineTextAlignment(.center)
                        .offset(y: -30)
                        
                }
                .frame(height : 10)
                NavigationLink(destination: q5()) {
                    Text("$$ ($25 and up)")
                        .foregroundColor(Color.black)
                        .multilineTextAlignment(.center)
                        .offset(y: -10)
                        
                }
                NavigationLink(destination: q5()) {
                    Text("In between")
                        .foregroundColor(Color.black)
                        .multilineTextAlignment(.center)
                        .offset(y: 10)
                }
                NavigationLink(destination: q5()) {
                    Text("I don't know")
                        .foregroundColor(Color.black)
                        .multilineTextAlignment(.center)
                        .offset(y: 30)
                }
                NavigationLink(destination: q5()) {
                    Text("No Budget!")
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

struct q4_Previews: PreviewProvider {
    static var previews: some View {
        q4()
    }
}
