//
//  journal_nav.swift
//  Final Project
//
//  Created by Nhi Tran on 6/29/23.
//

import SwiftUI

import SwiftUI

func today_date () -> String{
        let currentDate = Date()
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .long
        dateFormatter.timeStyle = .none
        
        return dateFormatter.string(from: currentDate)
//            .font(.title)
//            .padding() as! String
}

func print_notes (notes_array: [String]) -> () {
    for n in notes_array {
        print(n)
    }
}

struct journal_nav: View {
    @State private var all_notes = [String]()
    @State private var is_there_notes = false
    @State private var note_context = ""
    @State private var note_prompt_vis = false
    
    @State private var home_nav_ = false
    
    var body: some View {
        ZStack {
            Color("Color4")
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Text(today_date())
                    .font(.title)
                    .multilineTextAlignment(.center)
                
                Spacer()
                
                Text("safe space ♡")
                    .foregroundColor(.black)
                    .fontWeight(.medium)
                    .font(.title)
                Text("be kind to yourself")
                    .foregroundColor(.black)
                    .font(.headline)
                
                Spacer()
                
                if !note_prompt_vis {
                    Button(action: {
                        note_prompt_vis = true
                    }) {
                        
                        Text("Note Something")
                            .foregroundColor(.black)
                            .font(.headline)
                            .padding()
                        
                        Image(systemName: "note")
                            .foregroundColor(.black)
                            .font(.title)
                            .padding()
                    }
                    .background(Color.white)
                    .cornerRadius(10)
                }

                if note_prompt_vis {
                    TextField("peace and love", text: $note_context)
                        .padding()
                        .frame(width: 300, height: 200)
                        .foregroundColor(Color.black)
                        .background(Color("Color1"))
                        .cornerRadius(10)
                        .lineLimit(2)
                    
                    HStack {
                        Button(action: {
                            note_context = ""
                        }) {
                            Text("clear")
                            
                        }
                        .padding()
                        
                        Button(action: {
                            all_notes.append(note_context)
                            note_prompt_vis = false
                            is_there_notes = true
                        }) {
                            Text("enter")
                            
                        }
                        .padding()
                    }
                }
                
                VStack {
                    Text("your notes:")
                        .padding()

                    if is_there_notes {
                        Text(note_context + "\n" + today_date())
                            .border(Color.black, width: 0.5)
                            .padding()
                            .font(.headline)
                        
                }
//                    Spacer()
                }
//
                Spacer()
            }
            .padding()
            
        }
        
        
    }
    
}

struct journal_nav_Previews: PreviewProvider {
    static var previews: some View {
        journal_nav()
    }
}
