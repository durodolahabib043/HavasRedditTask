//
//  AppDelegate.swift
//  HavasRedditTask
//
//  Created by Habib Durodola on 2021-03-10.
//

import UIKit

class CommonNavigationContoller: UINavigationController {
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
}

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    var windows: UIWindow?

    func application(_: UIApplication, didFinishLaunchingWithOptions _: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        windows = UIWindow()
        windows?.makeKeyAndVisible()
        windows?.rootViewController = CommonNavigationContoller(rootViewController: HomeController())

        return true
    }
}
