import SwiftUI
import Playgrounds

class MyObject {
    var closure: (() -> Void)? = nil
    init() {
        print("Creating My Object")
    }
    
    deinit {
        print("MyObject has been deallocated")
    }
}

struct ChildView : View{
    
    @State var myObject = MyObject()
    var number : Int
    
    var body : some View {
        Text("number is \(number)")
  
    }
}

struct StateAndMacro: View {
    
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
    StateAndMacro()
}
