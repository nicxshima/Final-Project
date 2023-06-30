//
//  product_nav.swift
//  Final Project
//
//  Created by Nhi Tran on 6/30/23.
//

import SwiftUI

struct product_nav: View {
    var body: some View {
        ZStack {
            Color.gray
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                
                Spacer()
                
                Text("Day Routine ☀️")
                    .font(.title)
                    .fontWeight(.medium)
                    .padding()

                Text("Night Routine ")
                    .font(.title)
                    .fontWeight(.medium)
                    .padding()
                
                Spacer()
            }
        }
    }
}


struct product_nav_Previews: PreviewProvider {
    static var previews: some View {
        product_nav()
    }
}
