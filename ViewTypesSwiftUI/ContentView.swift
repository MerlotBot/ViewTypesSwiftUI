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
        Text ("Hello World")
            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
        .background(Color.red)
        .edgesIgnoringSafeArea(.all)
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
