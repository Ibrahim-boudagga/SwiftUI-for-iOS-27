import SwiftUI

struct SwipeActions   :   View {
    var body: some View {
        VStack {
            Text("Button 1")
                .swipeActions {
                    Button("Button 1") {}
                }
            Text("Button 2")
                .swipeActions {
                    Button("Button 1") {}
                }
            Text("Button 2")
                .swipeActions {
                    Button("Button 1") {}
                }
        }.swipeActionsContainer()
    }
}

#Preview {
    SwipeActions()
}
