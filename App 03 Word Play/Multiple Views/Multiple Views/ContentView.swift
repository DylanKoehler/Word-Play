//
//  ContentView.swift
//  Multiple Views
//
//  Created by Dylan Koehler on 10/4/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("This is where everything starts")
                    .padding()
                NavigationLink("Next View", destination: SwiftUIView01(phrase: "This is from the first view"))

            }
            .navigationTitle("Initial View")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
