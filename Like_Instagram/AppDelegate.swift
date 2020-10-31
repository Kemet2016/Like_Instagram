//
//  AppDelegate.swift
//  Like_Instagram
//
//  Created by Ahmed Moussa on 10/23/20.
//

import UIKit
import Parse

@main
class AppDelegate: UIResponder, UIApplicationDelegate, UIWindowSceneDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        let parseConfig = ParseClientConfiguration {
                    $0.applicationId = "rk2t4LiYHGOBFnsWlSkvha4V2jC2CYL5PFAtz0s3" // <- UPDATE
                    $0.clientKey = "Hig3jocgVNSvSO2VR8fE19qxSxAWkqNgAP3MR2Hg" // <- UPDATE
                    $0.server = "https://parseapi.back4app.com"
            }
        
            Parse.initialize(with: parseConfig)
       
//        if PFUser.current() != nil {
//            let main = UIStoryboard(name: "Main", bundle: nil)
//            let feedNavigationController = main.instantiateViewController(identifier: "FeedNavigationController")
//
//            window?.rootViewController = feedNavigationController
//        }
        
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }
    


}

