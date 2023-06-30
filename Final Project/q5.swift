//
//  q5.swift
//  Final Project
//
//  Created by Emi Uzner on 6/30/23.
//

import SwiftUI

struct q5: View {
    var body: some View {
        NavigationStack{
            VStack() {
                Text("Question 5 / 5")
                    .offset(y: -250)
                    .padding()
                Text("Lastly, do you prefer mineral, chemical, or tinted sunscreens?")
                    .font(.title)
                    .multilineTextAlignment(.center)
                    .offset(y: -200)
                    .padding()
                
                NavigationLink(destination: q2()) {
                    Text("Mineral")
                        .font(.body)
                        .foregroundColor(Color.black)
                        .multilineTextAlignment(.center)
                        .offset(y: -30)
                        
                }
                .frame(height : 10)
                NavigationLink(destination: q2()) {
                    Text("Chemical")
                        .foregroundColor(Color.black)
                        .multilineTextAlignment(.center)
                        .offset(y: -10)
                        
                }
                NavigationLink(destination: q2()) {
                    Text("Tinted")
                        .foregroundColor(Color.black)
                        .multilineTextAlignment(.center)
                        .offset(y: 10)
                }
                NavigationLink(destination: q2()) {
                    Text("Any is fine!")
                        .foregroundColor(Color.black)
                        .multilineTextAlignment(.center)
                        .offset(y: 30)
                
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity) // Expand the VStack to fill the whole view
            .background(Color("Color1").ignoresSafeArea()) // Set the background color and ignore safe area insets
        }
    }
    
}

struct q5_Previews: PreviewProvider {
    static var previews: some View {
        q5()
    }
}
