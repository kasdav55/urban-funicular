import SwiftUI
import PlaygroundSupport

struct ContentView: View {
    @State private var number1: String = "5"
    @State private var number2: String = "10"
    @State private var result: Int = 0

    var body: some View {
        VStack {
            TextField("Enter first number", text: $number1)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .keyboardType(.numberPad)
                .padding()

            TextField("Enter second number", text: $number2)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .keyboardType(.numberPad)
                .padding()

            Button(action: {
                if let num1 = Int(number1), let num2 = Int(number2) {
                    result = sum(num1, num2)
                }
            }) {
                Text("Calculate Sum")
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(8)
            }
            .padding()

            Text("The sum is \(result)")
                .font(.headline)
                .padding()
        }
        .padding()
    }

    func sum(_ a: Int, _ b: Int) -> Int {
        return a + b
    }
}

// Setting up the live view properly
let contentView = ContentView()
PlaygroundPage.current.setLiveView(contentView)
