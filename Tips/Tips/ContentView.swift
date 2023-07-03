// Tip Calculator
//
// hackingwithswift.com
// 
//
//

import SwiftUI

struct ContentView: View {
    
    @State var amount = ""
//    @State var tip = ""
    
    var body: some View {
        
        VStack {
            TextField("Enter amount", text: $amount)
            //Text(tip)
            //Button("Calculate Tip")
                //tip = displayTip(amountText: amount
            Text(displayTip(amountText: amount))
        }
        .padding()
    }
}

func tip20(amount: Double) -> Double {
    return amount * 0.2
}

func displayTip(amountText: String) -> String {
    if Double(amountText) == nil {
        return "That is not a number. Please try again."
    }
    
    var amount = Double(amountText)!
    var tip = tip20(amount: amount)
    return String(tip)
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
