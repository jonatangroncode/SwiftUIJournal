//
//  JournalEntryView.swift
//  SwiftUiJournal
//
//  Created by Admin on 2023-01-09.
//

import SwiftUI

struct JournalEntryView: View {
    var journal : Journal
    var entry : JournalEntry? = nil
    @State var content : String = ""
    @Environment(\.presentationMode) var presentationMode
    
    
    var body: some View {
        VStack{
        TextEditor(text: $content) // dollar för att få med hela state av content
        }
        .onAppear() {
            setContent()
        }
        .navigationBarItems(trailing: Button("Save"){
            saveEntry()
            presentationMode.wrappedValue.dismiss()// hoppar tillbaka till startsidan när knappen trycks
        })
    }
    
    //
    private func setContent() {
        if let entry = entry {
            content = entry.content
        }
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
