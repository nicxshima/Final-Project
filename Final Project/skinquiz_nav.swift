import SwiftUI

struct skinquiz_nav: View {
    var body: some View {
        NavigationStack {
            VStack() {
                Text("Question 1 / 5")
                    .padding()
                Text("What is your skin type?")
                    .font(.title)
                    .padding()
                
                NavigationLink(destination: q2()) {
                    Text("Dry")
                }
                .frame(height : 10)
                NavigationLink(destination: q2()) {
                    Text("Normal")
                }
                NavigationLink(destination: q2()) {
                    Text("Oily")
                }
                NavigationLink(destination: q2()) {
                    Text("Combination")
                }
                NavigationLink(destination: q2()) {
                    Text("Sensitive")
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

