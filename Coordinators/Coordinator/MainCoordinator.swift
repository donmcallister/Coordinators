//
//  MainCoordinator.swift
//  Coordinators
//
//  Created by Donald McAllister on 11/25/19.
//  Copyright © 2019 Donald McAllister. All rights reserved.
//

import Foundation
import UIKit

//now that we have a coordinator, we'll use this when app starts>
//delete "Main" from Main interace setting and add this to appdelegate:
//  var coordinator: MainCoordinator?

class MainCoordinator: Coordinator {
    var childCoordinators = [Coordinator]()
    var navigationController: UINavigationController //property not set
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController //property set
    }
    
    func start() {
        let vc = ViewController.instantiate()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: false)
    }
    
    func buySubscription() {
        //below was moved into the BuyCoordinator:
//        let vc = BuyViewController.instantiate()
//        vc.coordinator = self
//        navigationController.pushViewController(vc, animated: true)
        //create instance of child and tell it to take over controll:
        let child = BuyCoordinator(navigationController: navigationController)
        child.parentCoordinator = self
        childCoordinators.append(child)
        child.start()
        
        //problem in needing to know when to dismiss child? establish link from buycoordinator to the main coordinator: weak var parentCoordinator: MainCoordinator?... and link to self above.. 
    }
    
    func createAccount() {
        let vc = CreateAccountViewcontroller.instantiate()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: true)
    }
    
    func childDidFinish(_ child: Coordinator?) {
        for (index, coordinator) in childCoordinators.enumerated() {
            if coordinator === child {
                childCoordinators.remove(at: index)
                break
            }
        }
    }
    
}
