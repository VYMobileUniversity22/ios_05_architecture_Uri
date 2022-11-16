//
//  StudentClass.swift
//  jos_.05_architecture_Uri
//
//  Created by josepL on 16/11/22.
//

import Foundation

class Student: Persona{
    
    var level: String?
    
    init(name: String, level: String) {
        super.init(name: name)
        self.level = level
    }
}
