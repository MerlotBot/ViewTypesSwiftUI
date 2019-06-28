//
//  ContentView.swift
//  ViewTypesSwiftUI
//
//  Created by Antonakakis Nikolaos on 28.06.19.
//  Copyright © 2019 Antonakakis Nikolaos. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    @State private var scale: Length = 1.0
    
    var body: some View {
        Image("example-image")
        .scaleEffect(scale)
        
        .gesture(
        TapGesture()
            .onEnded({ (_) in
                self.scale += 0.1
            })
        )
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
