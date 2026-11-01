import SwiftUI
import Playgrounds

class MyObject {
    init() {
        print("Creating My Object")
    }
}

struct ChildView : View{
    
    @State var myObject = MyObject()
    var number : Int

    var body : some View{
        Text("number is \(number)")
    }
}

struct ContentView: View {

    @State private var number = 1

    var body: some View {
        VStack {
            ChildView(number:number)
            
            Button ("ADD") {
                number += 1
            }
        }
        
        
    }
}

#Preview {
    ContentView()
}
