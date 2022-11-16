//
//  Coordinator.swift
//  jos_.05_architecture_Uri
//
//  Created by josepL on 16/11/22.
//

//import Foundation
import UIKit

public protocol Coordinator{
    var childCoordinators: [Coordinator] {get set}
    var navigationController: UINavigationController {get set}
    
    func start()
}
