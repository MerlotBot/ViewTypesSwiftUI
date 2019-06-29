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
    @State var showingAlert = false
    
    var body: some View {
        
        Button(action: {
            self.showingAlert = true
        }) {
            Text("Show alert")
        }
            .presentation($showingAlert) {
                Alert(title: Text("Important message"), message: Text("Wear sunscreen"), dismissButton: .default(Text("Got it!")))
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
