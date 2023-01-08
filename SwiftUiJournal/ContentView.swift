//
//  ContentView.swift
//  SwiftUiJournal
//
//  Created by Admin on 2023-01-08.
//

import SwiftUI

struct ContentView: View {
    // dagbok med lista av anteckningar
    var journal = [JournalEntry]()
    
    init() {
        journal.append(JournalEntry(content: "åt mat"))
        journal.append(JournalEntry(content: "sov"))
        journal.append(JournalEntry(content: "Programmerade"))
        journal.append(JournalEntry(content: "badade"))

    }
    
    var body: some View {
        List(journal) { entry in
            Text(entry.content)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
