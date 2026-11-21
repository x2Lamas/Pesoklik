import SwiftUI
import UIKit

@main
struct PejskoKlikApp: App {
    var body: some Scene {
        WindowGroup { ContentView() }
    }
}

struct ContentView: View {
    @AppStorage("score") private var score = 0 // survives app restarts

    var body: some View {
        VStack {
            Text("Skóre: \(score)")
                .font(.system(size: 44, weight: .heavy, design: .rounded))
                .contentTransition(.numericText())
                .padding(.top, 24)

            Spacer()

            Button {
                withAnimation(.spring(duration: 0.25)) { score += 1 }
                UIImpactFeedbackGenerator(style: .light).impactOccurred()
            } label: {
                Image(uiImage: UIImage(named: "dog.jpg") ?? UIImage())
                    .resizable()
                    .scaledToFit()
                    .clipShape(RoundedRectangle(cornerRadius: 28))
                    .shadow(radius: 10)
                    .padding()
            }
            .buttonStyle(SquishStyle())
            .accessibilityLabel("Pejsek, klepni pro bod")

            Spacer()

            Button("Vynulovat") { withAnimation { score = 0 } }
                .foregroundStyle(.secondary)
                .padding(.bottom)
        }
    }
}

struct SquishStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .scaleEffect(configuration.isPressed ? 0.9 : 1)
            .animation(.spring(duration: 0.2), value: configuration.isPressed)
    }
}
