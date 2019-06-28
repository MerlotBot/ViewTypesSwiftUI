//
//  ContentView.swift
//  ViewTypesSwiftUI
//
//  Created by Antonakakis Nikolaos on 28.06.19.
//  Copyright © 2019 Antonakakis Nikolaos. All rights reserved.
//

import SwiftUI
import Combine

struct RestaurantRow: View {
    var name: String
    
    var body: some View {
        Text("Restaurant: \(name)")
    }
}

struct ContentView : View {

    var body: some View {
        List {
            RestaurantRow(name: "Joe's Original")
            RestaurantRow(name: "The Real Joe's Original")
            RestaurantRow(name: "Original Joe's")
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
