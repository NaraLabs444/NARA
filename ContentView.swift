import SwiftUI
import CoreLocation

struct ContentView: View {
    @State private var nearbyCount = 0
    @State private var isSearching = true

    var body: some View {
        ZStack {
            LinearGradient(colors: [Color(red: 0.98, green: 0.85, blue: 0.88), .white], startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()

            VStack(spacing: 24) {
                Spacer()
                Text("NÄRA")
                    .font(.system(size: 64, weight: .heavy, design: .rounded))
                    .foregroundColor(Color(red: 0.9, green: 0.2, blue: 0.4))

                Text("Livspartner inom 10m")
                    .font(.title3)
                    .fontWeight(.medium)
                    .foregroundColor(.black.opacity(0.7))

                Spacer()

                ZStack {
                    Circle().fill(Color(red: 0.9, green: 0.2, blue: 0.4).opacity(0.15)).frame(width: 220, height: 220)
                    Circle().fill(Color(red: 0.9, green: 0.2, blue: 0.4).opacity(0.25)).frame(width: 160, height: 160)
                    Image(systemName: "heart.fill").font(.system(size: 60)).foregroundColor(Color(red: 0.9, green: 0.2, blue: 0.4))
                }

                if isSearching {
                    VStack(spacing: 8) {
                        ProgressView().tint(Color(red: 0.9, green: 0.2, blue: 0.4))
                        Text("Söker i 10m radie...").font(.subheadline).foregroundColor(.gray)
                    }
                } else {
                    Text("\(nearbyCount) personer inom 10m").font(.headline)
                }

                Spacer()

                Button(action: {}) {
                    Text("Hitta NÄRA").font(.headline).foregroundColor(.white)
                        .frame(maxWidth: .infinity).padding().background(Color(red: 0.9, green: 0.2, blue: 0.4)).cornerRadius(16)
                }.padding(.horizontal, 32)

                Text("Bundle: se.naraapp.nara • TestFlight Build 1").font(.caption2).foregroundColor(.gray.opacity(0.6))
                Spacer().frame(height: 20)
            }
        }
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                isSearching = false
                nearbyCount = 1
            }
        }
    }
}