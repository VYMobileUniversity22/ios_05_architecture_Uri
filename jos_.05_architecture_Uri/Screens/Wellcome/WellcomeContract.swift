//
//  WellcomeContract.swift
//  jos_.05_architecture_Uri
//
//  Created by josepL on 16/11/22.
//

import Foundation
import UIKit

@objc protocol WellcomeViewProtocol: BaseProtocol{
    //func reloadInfo(data: String)
//    func goToDetail()
}
protocol WellcomePresenterProtocol {

    var view: WellcomeViewProtocol? { get set }
    
    func viewDidLoadWasCalled()
    func viewWillAppearWasCalled()

}
protocol WellcomeInteractorProtocol {
    
}
protocol WellcomeServiceProtocol {
    
}
protocol WellcomeCoordinatorDelegate {
    //Functions to go to another screen
}
