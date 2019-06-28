//
//  ContentView.swift
//  ViewTypesSwiftUI
//
//  Created by Antonakakis Nikolaos on 28.06.19.
//  Copyright © 2019 Antonakakis Nikolaos. All rights reserved.
//

import SwiftUI

struct Result: Identifiable {
    var id = UUID()
    var score: Int
}

struct ContentView : View {
    
    let results = [Result(score: 8), Result(score: 5), Result(score: 10)]
    
    var body: some View {
        VStack{
            ForEach(results) { result in
                Text("Result: \(result.score)")
                .padding()
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
