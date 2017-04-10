//
//  AppDelegate.swift
//  FadeInPush
//
//  Created by Danny Yassine on 2017-04-09.
//  Copyright © 2017 Danny Yassine. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    let fadeIn = FadeInController()

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        self.window = UIWindow(frame: UIScreen.main.bounds)
        let fadeInNavigationController = FadeInNavigationController(rootViewController: ViewController())
        fadeInNavigationController.delegate = fadeIn
        
        let fadeInTabBarController = FadeInTabBarController()
        fadeInTabBarController.delegate = fadeIn
        
        let fadeInNavigationController1 = FadeInNavigationController(rootViewController: ViewController())
        fadeInNavigationController1.delegate = fadeIn
        fadeInNavigationController1.title = "FIRST"
        let fadeInNavigationController2 = FadeInNavigationController(rootViewController: ViewController())
        fadeInNavigationController2.delegate = fadeIn
        fadeInNavigationController2.title = "SECOND"
        
        fadeInTabBarController.setViewControllers([fadeInNavigationController1, fadeInNavigationController2], animated: false)
        
        self.window?.rootViewController = fadeInTabBarController
        self.window?.makeKeyAndVisible()
        
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

