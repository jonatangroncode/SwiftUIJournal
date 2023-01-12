//
//  JournalEntryView.swift
//  SwiftUiJournal
//
//  Created by Admin on 2023-01-09.
//

import SwiftUI

struct JournalEntryView: View {
    var journal : Journal 
    @State var content : String = ""
    
    
    var body: some View {
        VStack{
        TextEditor(text: $content) // dollar för att få med hela state av content
        }
        .navigationBarItems(trailing: Button("Save"){
            saveEntry()
        })
    }
    
    private func saveEntry() {
        let entry = JournalEntry(content: content)
   
        journal.entries.append(entry)
    }
    
}



//struct JournalEntryView_Previews: PreviewProvider {
//    static var previews: some View {
//        JournalEntryView()
//    }
//}