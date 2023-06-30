import SwiftUI

struct skinquiz_nav: View {
    var body: some View {
        NavigationStack {
            VStack() {
                Text("Question 1 / 5")
                    .offset(y: -250)
                    .padding()
                Text("What is your skin type?")
                    .font(.title)
                    .multilineTextAlignment(.center)
                    .offset(y: -195)
                    .padding()
                
                NavigationLink(destination: q2()) {
                    Text("Dry")
                        .foregroundColor(Color.black)
                        .multilineTextAlignment(.center)
                        .offset(y: -30)
                }
                .frame(height : 10)
                NavigationLink(destination: q2()) {
                    Text("Normal")
                        .foregroundColor(Color.black)
                        .multilineTextAlignment(.center)
                        .offset(y: -10)
                }
                NavigationLink(destination: q2()) {
                    Text("Oily")
                        .foregroundColor(Color.black)
                        .multilineTextAlignment(.center)
                        .offset(y: 10)
                }
                NavigationLink(destination: q2()) {
                    Text("Combination")
                        .foregroundColor(Color.black)
                        .multilineTextAlignment(.center)
                        .offset(y: 30)
                }
                NavigationLink(destination: q2()) {
                    Text("Sensitive")
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
struct skinquiz_nav_Previews: PreviewProvider {
    static var previews: some View {
        skinquiz_nav()
    }
}

