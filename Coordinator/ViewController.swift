//
//  ViewController.swift
//  Coordinator
//
//  Created by 朱彦谕 on 2022/5/11.
//

import UIKit

class ViewController: UIViewController, Coordinating {

    var coordinator: Coordinator?
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .red
        title = "Home"
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 220, height: 220))
        view.addSubview(button)
        button.center = view.center
        button.backgroundColor = .systemGreen
        button.setTitleColor(.white, for: .normal)
        button.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
        button.setTitle("Tap Me!", for: .normal)
    }
    @objc func didTapButton() {
        coordinator?.eventOccured(with: .buttonTapped)
    }

}

