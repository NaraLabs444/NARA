import SwiftUI

@main
struct NARAApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

struct ContentView: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("NARA")
                .font(.largeTitle)
                .bold()
            Text("Välkommen!")
        }
        .padding()
    }
}
