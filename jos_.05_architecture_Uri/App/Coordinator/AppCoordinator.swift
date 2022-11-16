//
//  AppCoordinator.swift
//  jos_.05_architecture_Uri
//
//  Created by josepL on 16/11/22.
//

import Foundation
import UIKit

class AppCoordinator: Coordinator{
    
    var childCoordinators: [Coordinator] = []
    var window: UIWindow

    lazy var navigationController: UINavigationController = {
        getNavigation()
    }()

    private func getNavigation() -> UINavigationController{
        let navigator = UINavigationController()

        return navigator
    }

    init(window: UIWindow) {
        self.window = window
        self.window.rootViewController = navigationController
        self.window.makeKeyAndVisible()
    }

    func start() {
        showWellcome()
    }

    private func getNaviGation() -> UINavigationController{
        let navigator = UINavigationController()

        return navigator
    }
    func showWellcome() {
        //Coordinator
        let coordinator = WellcomeCoordinator()
        //Interactor
        let interactor = WellcomeInteractor()
        //Presenter
        let presenter = WellcomePresenter(interactor: interactor)
        //View
        let view = WellcomeViewController()
        
        view.delegate = coordinator
        presenter.view = view
        
        navigationController.setViewControllers([view], animated: true)
        
    }

    func showDetail(str: String) {
        navigationController.show(UIViewController(), sender: nil)
    }
}
