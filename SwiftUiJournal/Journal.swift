//
//  Journal.swift
//  SwiftUiJournal
//
//  Created by Admin on 2023-01-08.
//

import Foundation



class Journal : ObservableObject{
    @Published var entries = [JournalEntry]()
    
    init() {
        addMockData()
    }
    
    func addMockData() {
        entries.append(JournalEntry(content: "åt mat"))
        entries.append(JournalEntry(content: "sov"))
        entries.append(JournalEntry(content: "Programmerade"))
        entries.append(JournalEntry(content: "badade"))
    
    }
    
    func update(entry: JournalEntry, with content: String) {
        if let index = entries.firstIndex(of: entry) {
        entries[index].content = content
        }
    }
    
}
