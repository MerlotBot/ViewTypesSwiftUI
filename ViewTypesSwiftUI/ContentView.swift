//
//  ContentView.swift
//  ViewTypesSwiftUI
//
//  Created by Antonakakis Nikolaos on 28.06.19.
//  Copyright © 2019 Antonakakis Nikolaos. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    
    let colors: [Color] = [.red, .green, .blue]
    
    var body: some View {
        VStack{
            ForEach(colors.identified(by: \.self)) { color in
                Text(color.description.capitalized)
                .padding()
                .background(color)
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
