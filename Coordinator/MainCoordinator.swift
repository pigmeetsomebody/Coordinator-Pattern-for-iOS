//
//  MainCoordinator.swift
//  Coordinator
//
//  Created by 朱彦谕 on 2022/5/11.
//

import Foundation
import UIKit

enum SomeEvent {
    case buttonTapped
}

class MainCoordinator: Coordinator {
    
    var navigationController: UINavigationController?
    
    func start() {
        var vc: UIViewController & Coordinating = ViewController()
        vc.coordinator = self
        navigationController?.setViewControllers([vc], animated: false)
    }
    
    func eventOccured(with type: Event) {
        switch type {
        case .buttonTapped:
            var vc: UIViewController & Coordinating = SecondViewController()
            vc.coordinator = self
            navigationController?.pushViewController(vc, animated: true)
        }
        
    }
    
}

