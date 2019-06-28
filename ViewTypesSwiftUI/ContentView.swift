//
//  ContentView.swift
//  ViewTypesSwiftUI
//
//  Created by Antonakakis Nikolaos on 28.06.19.
//  Copyright © 2019 Antonakakis Nikolaos. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    @State var showGreeting = true
    
    var body: some View {
        VStack {
            Toggle(isOn: $showGreeting) {
                Text("Show welcome message")
            }.padding()
            
            if showGreeting {
                Text("Hello World!")
            }
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
