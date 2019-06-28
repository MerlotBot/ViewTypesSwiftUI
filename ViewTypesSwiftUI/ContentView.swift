//
//  ContentView.swift
//  ViewTypesSwiftUI
//
//  Created by Antonakakis Nikolaos on 28.06.19.
//  Copyright © 2019 Antonakakis Nikolaos. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    @State var name: String = ""
    @State var emailAddress = ""
    
    var body: some View {
        VStack {
            TextField($name, placeholder: Text("Enter your name"))
            .textFieldStyle(.roundedBorder)
            .padding()
            
            TextField($emailAddress, placeholder: Text("email.email.com"))
            .textFieldStyle(.roundedBorder)
            .padding()
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
