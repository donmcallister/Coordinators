//
//  Coordinator.swift
//  Coordinators
//
//  Created by Donald McAllister on 11/25/19.
//  Copyright © 2019 Donald McAllister. All rights reserved.
//

import Foundation
import UIKit

protocol Coordinator: AnyObject {
    var childCoordinators: [Coordinator] { get set }
    var navigationController: UINavigationController { get set }
    
    func start()
}
