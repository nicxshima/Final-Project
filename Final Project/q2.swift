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
                    .offset(y: -200)
                    .padding()
                
                NavigationLink(destination: q3()) {
                    Text("Dull Skin")
                        .font(.body)
                        .foregroundColor(Color.black)
                        .multilineTextAlignment(.center)
                        .offset(y: -30)
                        
                }
                .frame(height : 10)
                NavigationLink(destination: q3()) {
                    Text("Acne")
                        .foregroundColor(Color.black)
                        .multilineTextAlignment(.center)
                        .offset(y: -10)
                        
                }
                NavigationLink(destination: q3()) {
                    Text("Hyperpigmentation")
                        .foregroundColor(Color.black)
                        .multilineTextAlignment(.center)
                        .offset(y: 10)
                }
                NavigationLink(destination: q3()) {
                    Text("Dry, flaky skin")
                        .foregroundColor(Color.black)
                        .multilineTextAlignment(.center)
                        .offset(y: 30)
                }
                NavigationLink(destination: q3()) {
                    Text("Redness")
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
struct q2_Previews: PreviewProvider {
    static var previews: some View {
        q2()
    }
}

