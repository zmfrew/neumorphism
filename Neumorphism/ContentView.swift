import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            LinearGradient(Color.darkStart, Color.darkEnd)
            VStack {
                RoundedRectangle(cornerRadius: 25)
                    .fill(Color.darkEnd)
                    .frame(width: 300, height: 300)
                    .shadow(color: Color.darkStart, radius: 10, x: -10, y: -10)
                    .shadow(color: Color.darkEnd, radius: 10, x: 10, y: 10)
                    .padding(100)
                
                Button(action: {
                    print("Button tapped")
                }) {
                    Image(systemName: "heart.fill")
                        .foregroundColor(.gray)
                }
                .buttonStyle(DarkButtonStyle())
            }
            .edgesIgnoringSafeArea(.all)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
