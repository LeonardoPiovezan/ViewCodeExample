//
//  AppDelegate.swift
//  ViewCodeExample
//
//  Created by Leonardo Piovezan on 20/04/19.
//  Copyright © 2019 Leonardo Piovezan. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        self.window = UIWindow(frame: UIScreen.main.bounds)
        self.window?.rootViewController = SignUpViewController()
        self.window?.makeKeyAndVisible()
        return true
    }
}
