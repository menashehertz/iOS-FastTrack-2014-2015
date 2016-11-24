//
//  AppDelegate.swift
//  NavigationDemo
//
//  Created by Nicholas Outram on 27/02/2015.
//  Copyright (c) 2015 Plymouth University. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        // Override point for customization after application launch.
        window = UIWindow(frame: UIScreen.mainScreen().bounds)

        //TabBarController is the root view controller (a container)
        let tbc = UITabBarController()
        window?.rootViewController = tbc

        //Instantiate the two content controllers - give them titles
        let sb1 = UIStoryboard(name: "FirstViewController", bundle: nil)
        guard let vc1 = sb1.instantiateInitialViewController() as? FirstViewController else { return false }
        vc1.title = "VC1"

        let sb2 = UIStoryboard(name: "SecondViewController", bundle: nil)
        guard let vc2 = sb2.instantiateInitialViewController() as? SecondViewController else { return false }
        vc2.title = "VC2"

        //The second tab is a navigation controller, with vc2 as it's top content controller
        let nc = UINavigationController(rootViewController: vc2)

        //Configure the tab bar controller with the two view controllers (one per tab)
        tbc.viewControllers = [vc1, nc]

        window?.makeKeyAndVisible()
        return true
    }

    func applicationWillResignActive(application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}
