//
//  WellcomeViewController.swift
//  jos_.05_architecture_Uri
//
//  Created by josepL on 16/11/22.
//

import Foundation
import UIKit

internal final class WellcomeViewController: UIViewController{
    //MARK: Outlets
    
    @IBOutlet weak var btnSomething: UIButton!
    
    //MARK: Variables
    var presenter : WellcomePresenterProtocol?
    var delegate : WellcomeCoordinatorDelegate?
    var arrayPersons : Array<Persona> = []
    
    //MARK: Init
    public convenience init (presenter: WellcomePresenterProtocol){
        print("----Init---- Inicia View")
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
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        presenter?.viewWillAppearWasCalled()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter?.viewDidLoadWasCalled()
    }
}
extension WellcomeViewController: WellcomeViewProtocol{
    func loadArray(data: Array<Persona>) {
        print(data[3].name)
        print("loading array")
    }
    
    func printString(data: String) {
        print(data)
    }
    
    func printInfo(data: Array<Persona>) {
        print(data.count)
    }
    
    
    
    
}
