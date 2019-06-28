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
        
        VStack {
            Group {
                Text("Line")
                Text("Line")
                Text("Line")
                Text("Line")
                Text("Line")
            }
            Group {
                Text("Line")
                Text("Line")
                Text("Line")
                Text("Line")
                Text("Line")
                Text("Line")
                
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
