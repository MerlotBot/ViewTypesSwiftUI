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
    @State var enableLogging = false
    
    @State var selectedColor = 0
    @State var colors = ["Red", "Blue", "Green"]
    
    var body: some View {
        Form {
            SegmentedControl(selection: $selectedColor) {
                ForEach(0..<colors.count) {
                    Text(self.colors[$0]).tag($0)
                }
            }
            
            Toggle(isOn: $enableLogging) {
                Text("Enable Logging")
            }
            
            Button(action: {
                // activate theme
            }) {
                Text("Save Changes")
            }
        }.navigationBarTitle(Text("Settings"))
    }
}

#if DEBUG

struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
