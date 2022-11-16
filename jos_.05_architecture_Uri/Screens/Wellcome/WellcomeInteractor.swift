//
//  WellcomeInteractor.swift
//  jos_.05_architecture_Uri
//
//  Created by josepL on 16/11/22.
//

import Foundation

internal final class WellcomeInteractor {
    
    private let wellcomeService: WellcomeServiceProtocol
    var array = Array<Persona>()
    
    //Info rebuda //TODO: incloure al init la informació que ha de rebre
    init(wellcomeService: WellcomeServiceProtocol = WellcomeService(), array: Array<Persona>) {
        print("----Init---- Inicia iterator")
        self.wellcomeService = wellcomeService
        self.array = array
    }
//    init(wellcomeService: WellcomeServiceProtocol = WellcomeService(), array: Array<Persona>) {
//        self.array = array
//        self.wellcomeService = wellcomeService
//    }
    
}

extension WellcomeInteractor: WellcomeInteractorProtocol{
    //Funcions amb les que rebrá la info
    func getData() -> Array<Persona> {
        print("Interactor")
        let dataService = wellcomeService.getDataService()
        
        return dataService.getData()
    }
    

}
