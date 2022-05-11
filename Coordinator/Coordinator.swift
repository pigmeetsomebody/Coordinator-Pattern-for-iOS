//
//  Coordinator.swift
//  Coordinator
//
//  Created by 朱彦谕 on 2022/5/11.
//

import Foundation
import UIKit

enum Event {
    case buttonTapped
}

protocol Coordinator {
    var navigationController: UINavigationController? { get set }
    func start()
    func eventOccured(with type: Event)
}

protocol Coordinating {
    var coordinator: Coordinator? { get set }
}
