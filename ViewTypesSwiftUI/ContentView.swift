//
//  ContentView.swift
//  ViewTypesSwiftUI
//
//  Created by Antonakakis Nikolaos on 28.06.19.
//  Copyright © 2019 Antonakakis Nikolaos. All rights reserved.
//

import SwiftUI
import Combine

struct Taskrow: View {
    var body: some View {
        Text("Task data goes here")
    }
}

struct ContentView : View {
    
    var body: some View {
        List {
            Section(header: Text("Important tasks")) {
                Taskrow()
                Taskrow()
                Taskrow()
            }
            Section(header: Text("Other tasks"), footer: Text("End")) {
                Taskrow()
                Taskrow()
                Taskrow()
                Taskrow()
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
