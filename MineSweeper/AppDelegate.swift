//
//  AppDelegate.swift
//  MineSweeper
//
//  Created by Andrew Grossfeld on 12/2/15.
//  Copyright © 2015 Andrew Grossfeld. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        
        let vc = IntroViewController()
        let nav = UINavigationController(rootViewController: vc)
        
        window = UIWindow(frame: UIScreen.mainScreen().bounds)
        window?.rootViewController = nav
        window?.backgroundColor = UIColor.whiteColor()
        window?.makeKeyAndVisible()
        
        nav.navigationBar.tintColor = UIColor.blackColor()
        nav.navigationBar.barTintColor = UIColor.grayColor()
        
        let kArray = ["8Easy", "10Easy", "12Easy", "8Medium", "10Medium", "12Medium", "8Hard", "10Hard", "12Hard"]
        for key in kArray {
            if NSUserDefaults.standardUserDefaults().valueForKey(key) == nil {
                NSUserDefaults.standardUserDefaults().setValue(0, forKey: key)
            }
        }
        
        if NSUserDefaults.standardUserDefaults().valueForKey("theme") ==  nil {
            NSUserDefaults.standardUserDefaults().setValue("Night", forKey: "theme")
        }
        Style.changeTheme()
        
        
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

