import SwiftUI
import OrderedCollections

struct User : Identifiable {
    var id = Int()
}

struct ListAndGridReordable : View {
    @State private var users: [User] = (1...100).map(User.init)
    let columns : [
        GridItem
    ] = [
        .init(.adaptive(minimum: 100, maximum: 100))
    ]
    var body: some View {
        //        List {
        //            ForEach(users) { user in
        //                Text("User \(user.id)").font(.title3.bold())
        //            }.reorderable()
        //        }.reorderContainer(for: User.self){
        //            diff in diff.apply(to: &users)
        //        }
        //        ScrollView{
        //            LazyVStack  {
        //                ForEach(users) { user in
        //                    Text("User \(user.id)").font(.title3.bold())
        //                }.reorderable()
        //            }.reorderContainer(for: User.self){
        //                diff in diff.apply(to: &users)
        //            }
        //        }
        LazyVGrid(columns: columns) {
            ForEach(users) { user in
                Text("User \(user.id)").font(.title3.bold())
            }.reorderable()
        }.reorderContainer(for: User.self) { difference in
            difference.apply(to: &users)
        }
        
        
    }
}

extension ReorderDifference where CollectionID == ReorderableSingleCollectionIdentifier{
    
    func apply(to values: inout [some Identifiable<ItemID>]) {
        var dict = OrderedDictionary(uniqueKeys:values.map{$0.id}, values: values)
        let destinationOffset: Int = switch destination.position {
            case .before(let destination):
                dict.keys.firstIndex(of: destination) ?? dict.count
                
            case .end:
                dict.count
        }
        dict.move(keys: sources, to: destinationOffset)
        values = dict.values.elements
    }
}
#Preview {
    ListAndGridReordable()
}
