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
        print("Instancia coordinador")
        let coordinator = WellcomeCoordinator()
        //Interactor
        print("Instancia interactor")
        let interactor = WellcomeInteractor(array: Array<Persona>())
        //Presenter
        print("Instancia presenter")
        let presenter = WellcomePresenter(interactor: interactor)
        //View
        print("Instancia wiew")
        let view = WellcomeViewController(presenter: presenter)
        
        view.delegate = coordinator
        presenter.view = view
        
        navigationController.setViewControllers([view], animated: true)
        
    }

    func showDetail(str: String) {
        print("AppCoordinator showDetail")
        navigationController.show(UIViewController(), sender: nil)
    }
}
