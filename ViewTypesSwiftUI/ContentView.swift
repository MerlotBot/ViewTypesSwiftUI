//
//  ContentView.swift
//  ViewTypesSwiftUI
//
//  Created by Antonakakis Nikolaos on 28.06.19.
//  Copyright © 2019 Antonakakis Nikolaos. All rights reserved.
//

import SwiftUI
import Combine

struct User: Identifiable {
    var id = UUID()
    var username = "Anonymous"
}

struct ContentView : View {
    let users = [User(), User(), User()]
    var body: some View {
        List(users) { user in
            Image("example-image")
            .resizable()
                .frame(width: 40, height: 40)
            Text(user.username)
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
