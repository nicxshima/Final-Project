import SwiftUI
struct q2: View {
    var body: some View {
        NavigationStack{
            VStack() {
                Text("Question 2 / 5")
                    .offset(y: -250)
                    .padding()
                Text("What are your main skin concerns?")
                    .font(.title)
                    .multilineTextAlignment(.center)
                    .offset(y: -240)
                    .padding()
                
                NavigationLink(destination: q2()) {
                    Text("Dry")
                        .multilineTextAlignment(.center)
                            .buttonStyle(.bordered)
                     
                        
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
struct q2_Previews: PreviewProvider {
    static var previews: some View {
        q2()
    }
}

