//
//  AppDelegate.swift
//  TestingBasics
//
//  Created by Greg Price on 25/03/2021.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        let viewModel = ViewModel (
            items: ["1", "2", "3", "4", "Hello!"],
            alertTitle: "Wahoo",
            oddIndexMessage: "Odd",
            evenIndexMessage: "Even"
        )
        
        let viewController = ViewController()
        viewController.configure(viewModel)
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = viewController
        window?.makeKeyAndVisible()
        return true
    }
}

