//
//  WellcomeContract.swift
//  jos_.05_architecture_Uri
//
//  Created by josepL on 16/11/22.
//

import Foundation
import UIKit

@objc protocol WellcomeViewProtocol: BaseProtocol{
    func printString(data: String)
    //Persona declarada como NSObject
    func loadArray(data: Array<Persona>)
}
protocol WellcomePresenterProtocol {

    var view: WellcomeViewProtocol? { get set }
    
    func viewDidLoadWasCalled()
    func viewWillAppearWasCalled()

}
protocol WellcomeInteractorProtocol {
    func getData() -> Array<Persona>
}
protocol WellcomeServiceProtocol {
    func getDataService() -> DataServiceProtocol
}
protocol WellcomeCoordinatorDelegate {
    //Functions to go to another screen
    func gotoDetailScreen(sender:UIViewController)
}
