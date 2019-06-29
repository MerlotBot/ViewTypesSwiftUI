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
    @State var showingSheet = false
    
    var sheet: ActionSheet {
        ActionSheet(title: Text("Action"), message: Text("Quote mark"), buttons: [.default(Text("Show Sheet"), onTrigger: {
            self.showingSheet = false
        })])
    }
    
    var body: some View {
        VStack {
            Button(action: {
                self.showingAlert = true
            }) {
                Text("Show alert")
                }
                .presentation($showingAlert) {
                    Alert(title: Text("Are you sure you want to delete this?"), message: Text("There is no undo"), primaryButton: .destructive(Text("Delete")) {
                        print("Deleting...")
                        }, secondaryButton: .cancel())
            }
            
            Button(action: {
                self.showingSheet = true
            }) {
                Text("Woo")
            }
                .presentation(showingSheet ? sheet : nil)
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
