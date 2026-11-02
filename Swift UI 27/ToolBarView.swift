import SwiftUI

struct ToolBarView: View {
    var body: some View {
        NavigationStack {
            List(1..<100) { i in Text("Row \(i)") }.toolbar {
             
                ToolbarOverflowMenu {
                    Button("Button 1", systemImage: "1.circle") {}
                    Button("Button 2", systemImage: "2.circle") {}
                    Button("Button 3", systemImage: "3.circle") {}
                }
                
                ToolbarItemGroup {
                    Button("Button 4", systemImage: "4.circle") {}
                    Button("Button 5", systemImage: "5.circle") {}
                    Button("Button 6", systemImage: "6.circle") {}
                }
                ToolbarSpacer(.fixed)

                ToolbarItemGroup {
                    Button("Button 7", systemImage: "7.circle") {}
                    Button("Button 8", systemImage: "8.circle") {}
                    Button("Button 9", systemImage: "9.circle") {}
                }
                
                ToolbarSpacer(.fixed)

                ToolbarItemGroup(placement: .topBarPinnedTrailing) {
                    Button("Button 10", systemImage: "10.circle") {}
                    Button("Button 11", systemImage: "11.circle") {}
                    Button("Button 12", systemImage: "12.circle") {}
                }.visibilityPriority(.high)
                
                
               
            }
        }
    }
}

#Preview { ToolBarView() }
