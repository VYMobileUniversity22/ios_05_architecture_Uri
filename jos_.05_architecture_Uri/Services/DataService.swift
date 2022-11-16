//
//  DataService.swift
//  jos_.05_architecture_Uri
//
//  Created by josepL on 16/11/22.
//

import Foundation

protocol DataServiceProtocol {
    func getData() -> Array<Persona>
}
public class DataService: DataServiceProtocol{
    
    var arrayPersons = Array<Persona>()

    func getData() -> Array<Persona> {
        print("DataService")
        arrayPersons.append(Student(name: "Ana", level: "first"))
        arrayPersons.append(Student(name: "Anina", level: "first"))
        arrayPersons.append(Student(name: "Uri", level: "first"))
        arrayPersons.append(Student(name: "Fao", level: "first"))
        arrayPersons.append(Student(name: "Eric", level: "first"))
        arrayPersons.append(Student(name: "Santiago", level: "first"))
        arrayPersons.append(Teacher(name: "Miquel", subject: "ios"))
        
        return arrayPersons
    }
}
