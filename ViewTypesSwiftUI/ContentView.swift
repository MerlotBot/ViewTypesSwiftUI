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
        NavigationView {
            NavigationButton(destination: DetailView()) {
                Text("Hello World")
            }
            }.onAppear {
                print("ContentView appeared!")
            }.onDisappear {
                print("ContentView disappeared!")
        }
    }
}

struct DetailView: View {
    var body: some View {
        VStack {
            Text("Second View")
            }.onAppear {
                print("DetailView appeared!")
            }.onDisappear {
                print("DetailView disappeared!")
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
