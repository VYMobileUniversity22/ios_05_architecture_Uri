//
//  WellcomeViewController.swift
//  jos_.05_architecture_Uri
//
//  Created by josepL on 16/11/22.
//

import Foundation
import UIKit

class WellcomeViewController: UIViewController{
    //MARK: Outlets
    
    @IBOutlet weak var btnSomething: UIButton!
    
    //MARK: Variables
    var presenter : WellcomePresenterProtocol?
    var delegate : WellcomeCoordinatorDelegate?
    
    //MARK: Init
    public convenience init (presenter: WellcomePresenterProtocol){
        self.init(nibName: "WellcomeViewController", bundle: nil)
        self.presenter = presenter
    }
    
    public static func instantiate(presenter: WellcomePresenterProtocol) -> WellcomeViewController{
        guard let viewController = UIStoryboard(name: "Main", bundle: nil)
            .instantiateViewController(withIdentifier: "WellcomeViewController")
                as? WellcomeViewController else{
            return WellcomeViewController()
        }
        viewController.presenter = presenter
        return viewController
    }
}
extension WellcomeViewController: WellcomeViewProtocol{
    
}
