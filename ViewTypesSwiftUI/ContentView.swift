//
//  ContentView.swift
//  ViewTypesSwiftUI
//
//  Created by Antonakakis Nikolaos on 28.06.19.
//  Copyright © 2019 Antonakakis Nikolaos. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    
    var body: some View {
        Image("example-image")
        
        .gesture(
            LongPressGesture(minimumDuration: 2)
                .onEnded({ (_) in
                    print("Pressed!")
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
