//
//  WellcomePresenter.swift
//  jos_.05_architecture_Uri
//
//  Created by josepL on 16/11/22.
//

import Foundation

internal final class WellcomePresenter {
    // MARK: Variables
    var view: WellcomeViewProtocol?
    var interactor: WellcomeInteractorProtocol
    var arrayPersons: Array<Persona> = []
    
    // MARK: Inits
    init(interactor: WellcomeInteractorProtocol) {
        print("----Init---- Inicia presenter")
        self.interactor = interactor
    }
    
}

// MARK: Extensions

extension WellcomePresenter: WellcomePresenterProtocol {
    func viewDidLoadWasCalled() {
        let arrayPersons = interactor.getData()
        print("WellcomePresenter")
        print(arrayPersons[1].name)
        view?.loadArray()
    }
    
    func viewWillAppearWasCalled() {
        
    }
    
    

}
