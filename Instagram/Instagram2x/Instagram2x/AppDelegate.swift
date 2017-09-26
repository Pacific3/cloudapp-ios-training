//
//  AppDelegate.swift
//  Instagram2x
//
//  Created by Héctor Cuevas Morfín on 9/26/17.
//  Copyright © 2017 CloudApp. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        window = UIWindow(frame: UIScreen.main.bounds)
        let navigation = UINavigationController()
        navigation.show(ViewController(), sender: nil)
        window?.rootViewController = navigation
        window?.makeKeyAndVisible()
        return true
    }
}

