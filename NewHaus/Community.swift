//
//  Community.swift
//  NewHaus
//
//  Created by Mike Martin on 11/5/16.
//  Copyright © 2016 Mike Martin. All rights reserved.
//

import Foundation

class Community {
    
    var name:String?
    var applicationURL:String?
    
    init(_ name:String, _ applicationURL:String) {
        self.name = name
        self.applicationURL = applicationURL
    }
    
    func isSubstringInName(_ substring:String) -> Bool {
        return (self.name?.contains(substring))!
    }
    
}
