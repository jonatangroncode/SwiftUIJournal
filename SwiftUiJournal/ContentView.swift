//
//  ContentView.swift
//  SwiftUiJournal
//
//  Created by Admin on 2023-01-08.
//

import SwiftUI

struct ContentView: View {
    // dagbok med lista av anteckningar
   @StateObject var journal = Journal()
    
    init() {

    }
    
    // allt sånt som ligger i body har bara med utseende att göra
    var body: some View {
        //navigering
        NavigationView {
        
            List() {
                ForEach(journal.entries)   { entry in
            
            NavigationLink(destination: JournalEntryView(journal: journal, entry: entry )){
                RowView(entry: entry)
            }
          
          }
                .onDelete() { IndexSet in
                    delete(indexSet: IndexSet)
                }
        }
    
        .navigationBarTitle("Journal") //rubriken i navbar
             .navigationBarItems(trailing: NavigationLink(destination: JournalEntryView(journal: journal))
                {
                 Image(systemName: "plus.circle")//bild från sf plus i hörnet
                 
             })

       }
     
    }
    
    func delete(indexSet: IndexSet) {
        journal.entries.remove(atOffsets: indexSet)
        
    }

}




struct RowView : View {
    var entry : JournalEntry
    
    //formaterar date så att de ser ut som vi vill
    var date : String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .medium
        
        return dateFormatter.string(from: entry.date)
    }
    
    var body: some View {
        HStack{
            Text("\(date)")
            Spacer()
            Text(entry.content.prefix(7) + "...")
            
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
