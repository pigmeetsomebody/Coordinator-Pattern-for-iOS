//
//  SecondViewController.swift
//  Coordinator
//
//  Created by 朱彦谕 on 2022/5/11.
//

import Foundation
import UIKit

class SecondViewController: UIViewController, Coordinating {
    var coordinator: Coordinator?
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBlue
        title = "Second View"

        
    }
    @objc func didTapButton() {
        coordinator?.eventOccured(with: .buttonTapped)
    }
}
