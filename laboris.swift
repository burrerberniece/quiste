import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Rectangle()
                .fill(Color.blue)
                .frame(width: 200, height: 200)
                .overlay(alignment: .bottom) {
                    // Define the box to be overlaid at the bottom
                    box("Bottom")
                }
        }
    }
    
    // Function to create a box with a text label
    func box(_ text: String) -> some View {
        Text(text)
            .padding()
            .background(Color.red)
            .cornerRadius(8)
            .foregroundColor(.white)
            .padding(.bottom, 10) // Add some padding to the bottom
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
