//
//  ContentView.swift
//  ViewTypesSwiftUI
//
//  Created by Antonakakis Nikolaos on 28.06.19.
//  Copyright © 2019 Antonakakis Nikolaos. All rights reserved.
//

import SwiftUI
import Combine

class UserSettings: BindableObject {
    var didChange = PassthroughSubject<Void, Never>()
    
    var score = 0 {
        didSet {
            didChange.send(())
        }
    }
}

struct ContentView : View {
    @EnvironmentObject var settings: UserSettings

    var body: some View {
        NavigationView {
            VStack {
                Text("Your score is \(settings.score)")
                Button(action: {
                    self.settings.score += 1
                }) {
                    Text("Increase score")
                }
                
                NavigationButton(destination: DetailView()) {
                    Text("Show Detail View")
                }
            }
        }
    }
}

struct DetailView: View {
    @EnvironmentObject var settings: UserSettings
    
    var body: some View {
        Text("Score: \(settings.score)")
    }
}


#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(UserSettings())
    }
}
#endif
