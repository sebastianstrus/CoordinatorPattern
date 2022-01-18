//
//  MainCoordinator.swift
//  CoordinatorPattern
//
//  Created by Sebastian Strus on 2022-01-18.
//

import Foundation
import UIKit

class MainCoordinator: Coordinator {
    
    var navigationController: UINavigationController?
    var children: [Coordinator]? = nil
    
    func eventOccurred(with type: Event) {
        switch type {
        case .buttonTapped:
            var vc: UIViewController & Coordinating = SecondViewController()
            vc.coordinator = self
            navigationController?.pushViewController(vc, animated: true)
            print("Button tapped")

        }
    }
    
    func start() {
        var vc: UIViewController & Coordinating = ViewController()
        vc.coordinator = self
        navigationController?.setViewControllers([vc], animated: false)
        
    }
    
    
}
