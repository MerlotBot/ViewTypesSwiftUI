//
//  ContentView.swift
//  ViewTypesSwiftUI
//
//  Created by Antonakakis Nikolaos on 28.06.19.
//  Copyright © 2019 Antonakakis Nikolaos. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    @State var showDetail = false
    
    var body: some View {
        VStack {
            Button(action: {
                print("Debug Preview")
                self.showDetail.toggle()
            }) {
                Image("example-image")
                .resizable()
                    .frame(width: 100, height: 100)
            }
            
            if showDetail {
                Text("You should follow me on Twitter")
                .font(.largeTitle)
                .lineLimit(nil)
                
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
