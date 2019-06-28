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
    
    var body: some View {
        NavigationView {
            Text("SwiftUI")
                .font(.largeTitle)
                .navigationBarTitle(Text("Welcome"))
            .navigationBarItems(trailing:
                Button(action: {
                    print("Help tapped!")
                }) {
                    Text("Help")
            })
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
