//
//  home_nav.swift
//  Final Project
//
//  Created by Nhi Tran on 6/29/23.
//

import SwiftUI

struct home_nav: View {
    var name_: String
    @State private var go_to_journal = false
    
    var body: some View {
        NavigationView() {
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
                        
                        Spacer()
                        
                        Text("Welcome \(name_)!")
                            .font(.headline)
                            .fontWeight(.bold)
                            .padding()
                        
                        Spacer()
                        
                        NavigationLink(destination: skinquiz_nav()) {
                            Text("Skin Quiz")
                                .foregroundColor(.black)
                                .font(.headline)
                                .padding()
                                .background(Color.white)
                                .cornerRadius(10)
                        }
                        .padding()
                        
                        NavigationLink(destination: product_nav()) {
                            Text("Products")
                                .foregroundColor(.black)
                                .font(.headline)
                                .padding()
                                .background(Color.white)
                                .cornerRadius(10)
                        }
                        .padding()
                        
                        NavigationLink(destination: reminder_nav()) {
                            Text("Reminders")
                                .foregroundColor(.black)
                                .font(.headline)
                                .padding()
                                .background(Color.white)
                                .cornerRadius(10)
                        }
                        .padding()

                        NavigationLink(destination: journal_nav()) {
                            Text("Journal")
                                .foregroundColor(.black)
                                .font(.headline)
                                .padding()
                                .background(Color.white)
                                .cornerRadius(10)
                        }
                        .padding()
                        
                        Spacer()
                    }
                    Spacer()
                }
        }
    }
}
