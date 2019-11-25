//
//  BuyCoordinator.swift
//  Coordinators
//
//  Created by Donald McAllister on 11/25/19.
//  Copyright © 2019 Donald McAllister. All rights reserved.
//

import UIKit

class BuyCoordinator: Coordinator {

    weak var parentCoordinator: MainCoordinator?
    
    var childCoordinators = [Coordinator]()
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let vc = BuyViewController.instantiate()
        vc.coordinator = self //doesn't work until change property to by a BuyCoordinator in the BuyViewController class. 
        navigationController.pushViewController(vc, animated: true)
    }
    
    func didFinishBuying() {
        parentCoordinator?.childDidFinish(self)
    }
}
