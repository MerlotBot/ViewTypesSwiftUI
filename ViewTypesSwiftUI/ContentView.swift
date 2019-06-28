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
    @State var showingAdvancedOptions = false
    @State var enableLogging = false
    
    var body: some View {
        Form {
            Section {
                Toggle(isOn: $showingAdvancedOptions.animation()) {
                    Text("Show advanced options")
                }
                
                if showingAdvancedOptions {
                    Toggle(isOn: $enableLogging) {
                        Text("Enable logging")
                    }
                }
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
