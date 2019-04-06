//
//  AppDelegate.swift
//  TicketSchedule
//
//  Created by Takaki Otsu on 2019/03/24.
//  Copyright © 2019 Takaki Otsu. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        // Separate Launch situations
        let userDefault = UserDefaults.standard
        let dict = ["firstLaunch": true]
        userDefault.register(defaults: dict)
        if userDefault.bool(forKey: "firstLaunch") {
            print("first launch")
            userDefault.set(false, forKey: "firstLaunch")
        }
        print("not first launch")
        
        // Setting Realm
        RealmManager.realmConfig()
        sleep(2);
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

func printHeader(fileNameStr: String, funcNameStr: String) {
    //    if !FlagManager.showLogs { return }
    let fileName: String = "\(fileNameStr.components(separatedBy: "/").last!.components(separatedBy: ".").first!)"
    let funcName: String = "\(funcNameStr)"
    let backSlash: String = {
        var footer = ""
        if 70 - fileName.count - funcName.count >= 0 {
            for _ in 1...75-fileName.count - funcName.count {
                footer += "/"
            }
        } else {
            footer = "//"
        }
        return footer
    }()
    Swift.print("// \(fileName) \(funcName) \(backSlash)")
}
