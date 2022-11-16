//
//  TeacherClass.swift
//  jos_.05_architecture_Uri
//
//  Created by josepL on 16/11/22.
//

import Foundation

class Teacher: Persona{
    
    var subject: String?
    
    init(name: String, subject: String) {
        super.init(name: name)
        self.subject = subject
    }
}
