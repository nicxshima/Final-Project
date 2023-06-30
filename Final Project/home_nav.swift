//
//  home_nav.swift
//  Final Project
//
//  Created by Nhi Tran on 6/29/23.
//

import SwiftUI

struct home_nav: View {
    var name_: String

    var body: some View {
        ZStack {
            Color("Color1")
                .edgesIgnoringSafeArea(.all)
            VStack {
                Text("Luminosity")
                    .font(.headline)
                    .fontWeight(.bold)
                    .padding()

                Image("app_logo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(80)
                    .frame(width: 150)

                Text("Welcome \(name_)!")
                    .font(.headline)
                    .fontWeight(.bold)
                    .padding()

                Button(action: {
                    // Handle button tap
                }) {
                    Text("Skin Quiz")
                        .foregroundColor(.black)
                        .font(.headline)
                        .padding()
                        .background(Color.white)
                        .cornerRadius(10)
                }
                .padding()

                Button(action: {
                    // Handle button tap
                }) {
                    Text("Products")
                        .foregroundColor(.black)
                        .font(.headline)
                        .padding()
                        .background(Color.white)
                        .cornerRadius(10)
                }
                .padding()

                Button(action: {
                    // Handle button tap
                }) {
                    Text("Reminders")
                        .foregroundColor(.black)
                        .font(.headline)
                        .padding()
                        .background(Color.white)
                        .cornerRadius(10)
                }
                .padding()

                Button(action: {
                    // Handle button tap
                }) {
                    Text("Journal")
                        .foregroundColor(.black)
                        .font(.headline)
                        .padding()
                        .background(Color.white)
                        .cornerRadius(10)
                        .frame(width: 500)
                }
                .padding()

                Spacer()
            }
        }
    }
}
