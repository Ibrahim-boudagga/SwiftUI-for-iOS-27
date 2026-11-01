import SwiftUI

struct ProminentTabViewItem: View {
    var body: some View {
        TabView {
            Tab("1", systemImage: "1.circle" ,role: .prominent) { Text("Hello") }
            Tab("", systemImage: "2.circle" ) { Text("Hola") }
            Tab("", systemImage: "3.circle" ) { Text("Hello") }
            Tab("", systemImage: "4.circle" ) { Text("Hello") }
        }
    }
}

#Preview { ProminentTabViewItem() }
