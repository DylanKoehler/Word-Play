//
//  StoryView.swift
//  App 03 Word Play
//
//  Created by Student on 10/6/21.
//

import SwiftUI

struct StoryView: View {
    let words : Words
    var body: some View {
        Text(writeStory())
    }
    
    func writeStory() -> String{
        return "There once was a man named \(words.maleName). " +
            "He had a \(words.animal1) as a pet and he lived with a \(words.jobTitle). " +
            "He was very\(words.adjective1) and \(words.adjective2). " +
            "He needed some \(words.noun1) so he went to the \(words.place). " +
            "Here he also bought \(words.noun2) for $\(words.number). " +
            "When he was coming home he was attacked by a \(words.animal2). " +
            "He survived and enjoyed his night \(words.verbIng). "
    }
}

struct StoryView_Previews: PreviewProvider {
    static var previews: some View {
        StoryView(words: Words())
    }
}
