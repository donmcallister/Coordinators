//
//  ViewController.swift
//  Coordinators
//
//  Created by Donald McAllister on 11/25/19.
//  Copyright © 2019 Donald McAllister. All rights reserved.
//

import UIKit

class ViewController: UIViewController, Storyboarded {
    
//  all our view controllers need a way to talk to their coordinator..for larger apps you’ll want to use protocols here, but this is a fairly small app so we can refer to our MainCoordinator class directly. add this property to all three of your view controllers:
    weak var coordinator: MainCoordinator?
    
    @IBOutlet var product: UISegmentedControl!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func buyTapped(_ sender: Any) {
        coordinator?.buySubscription(to: product.selectedSegmentIndex)
        print(product.selectedSegmentIndex)
    }
    @IBAction func createAccountTapped(_ sender: Any) {
        coordinator?.createAccount()
    }
    
}

