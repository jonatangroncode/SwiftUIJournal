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
    
    var body: some View {
        //navigering
        NavigationView {
        
        List(journal.entries) { entry in
            Text(entry.content)
          }
            
        .navigationBarTitle("Journal") //rubriken i navbar
             .navigationBarItems(trailing: NavigationLink(destination: ContentView())
                                 { Image(systemName: "plus.circle")//bild från sf plus i hörnet
                 
             })

       }
     
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
