import SwiftUI

struct SheetView : View {
    @State private var isPresented = false
    
    var body: some View {
        
        NavigationStack{
            Button("Tap Me") {
                isPresented.toggle()
            }
        }.sheet(isPresented: $isPresented) {
            Text("Sheet")
                .navigationTransition(.crossFade)
        }
    }
}

#Preview {
    SheetView()
}
