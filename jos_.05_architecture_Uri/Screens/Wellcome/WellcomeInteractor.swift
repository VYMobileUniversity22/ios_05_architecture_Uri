//
//  WellcomeInteractor.swift
//  jos_.05_architecture_Uri
//
//  Created by josepL on 16/11/22.
//

import Foundation

internal final class WellcomeInteractor {
    
    private let wellcomeService: WellcomeServiceProtocol
    
    //Info rebuda //TODO: incloure al init la informació que ha de rebre
    init(wellcomeService: WellcomeServiceProtocol = WellcomeService()) {
        self.wellcomeService = wellcomeService
    }
    
}

extension WellcomeInteractor: WellcomeInteractorProtocol{
    //Funcions amb les que rebrá la info
}
