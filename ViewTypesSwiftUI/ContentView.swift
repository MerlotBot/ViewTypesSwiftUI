//
//  ContentView.swift
//  ViewTypesSwiftUI
//
//  Created by Antonakakis Nikolaos on 28.06.19.
//  Copyright © 2019 Antonakakis Nikolaos. All rights reserved.
//

import SwiftUI
import Combine

struct ContentView : View {
    @State var users = ["Nikos", "Kostas", "Jiannis", "Kathrin", "Karin", "Christina"]
    
    var body: some View {
        NavigationView {
            List {
                ForEach(users.identified(by: \.self)) { user in
                    Text(user)
                }
                .onMove(perform: move)
                .onDelete(perform: delete)
            }
                .navigationBarItems(trailing: EditButton())
        }
    }
    
    func delete(at offsets: IndexSet) {
        if let first = offsets.first {
            users.remove(at: first)
        }
    }
    
    func move(from source: IndexSet, to destination: Int) {
        //sort the indexes low to high
        let reversedSource = source.sorted()
        
        // then loop from the back to avoid reordering problems
        for index in reversedSource.reversed() {
            users.insert(users.remove(at: index), at: destination)
        }
    }
}


#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
