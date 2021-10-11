//
//  ContentView.swift
//  App 03 Word Play
//
//  Created by Dylan Koehler on 9/28/21.
//

import SwiftUI

struct ContentView: View {
    @State private var words = Words()
    var body: some View {
        NavigationView {
            VStack {
                Text("Please enter the requested words below")
                HStack {
                    CustomTextField(placeholder: "Male name", variable: $words.maleName)
                    CustomTextField(placeholder: "animal", variable: $words.animal1)
                    CustomTextField(placeholder: "job title", variable: $words.jobTitle)
                }
                HStack {
                    CustomTextField(placeholder: "adjective", variable: $words.adjective1)
                    CustomTextField(placeholder: "adjective", variable: $words.adjective2)
                    CustomTextField(placeholder: "noun", variable: $words.noun1)
                }
                HStack {
                    CustomTextField(placeholder: "place", variable: $words.place)
                    CustomTextField(placeholder: "noun", variable: $words.noun2)
                    CustomTextField(placeholder: "number", variable: $words.number)
                }
                HStack {
                    CustomTextField(placeholder: "animal", variable: $words.animal2)
                    CustomTextField(placeholder: "verb ending in -ing", variable: $words.verbIng)
                }
                NavigationLink("Next", destination: StoryView(words: words))
                Spacer()
            }
            .navigationTitle("Word Play")
        }
    }
}

struct Words {
    var maleName = ""
    var animal1 = ""
    var jobTitle = ""
    
    var adjective1 = ""
    var adjective2 = ""
    var noun1 = ""
    
    var place = ""
    var noun2 = ""
    var number = ""
    
    var animal2 = ""
    var verbIng = ""
}

struct CustomTextField: View {
    let placeholder : String
    let variable : Binding<String>
    var body: some View {
        TextField(placeholder, text: variable)
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .autocapitalization(.none)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
