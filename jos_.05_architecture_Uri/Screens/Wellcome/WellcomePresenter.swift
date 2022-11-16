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
    
    // MARK: Inits
    init(interactor: WellcomeInteractorProtocol) {
        self.interactor = interactor
    }
    
}

// MARK: Extensions

extension WellcomePresenter: WellcomePresenterProtocol {
    func viewDidLoadWasCalled() {
        
    }
    
    func viewWillAppearWasCalled() {
        
    }
    
    

}
