//
//  JournalEntry.swift
//  SwiftUiJournal
//
//  Created by Admin on 2023-01-08.
//

import Foundation



struct JournalEntry : Identifiable, Equatable {
    let id = UUID()
    
    
    
    var content : String
    var date : Date = Date()
    
    
    
}
