//
//  AppDelegate.swift
//  Coordinator
//
//  Created by 朱彦谕 on 2022/5/11.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        let coordinator = MainCoordinator()
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.tintAdjustmentMode = .normal
        window?.backgroundColor = .white
        let navVC = UINavigationController()
        coordinator.navigationController = navVC
        window?.rootViewController = navVC
        window?.makeKeyAndVisible()
        coordinator.start()
        return true
    }

}

