//
//  BuyViewController.swift
//  Coordinators
//
//  Created by Donald McAllister on 11/25/19.
//  Copyright © 2019 Donald McAllister. All rights reserved.
//

import UIKit

class BuyViewController: UIViewController, Storyboarded {
    weak var coordinator: MainCoordinator? //BuyCoordinator? //was MainCoordinator?
    
    var selectedProduct = 0 //which subscription product was selected? provide this when other VC created in buySubscription()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
//    override func viewDidDisappear(_ animated: Bool) {
//        super.viewDidDisappear(animated)
//        coordinator?.didFinishBuying()
//    }
}
