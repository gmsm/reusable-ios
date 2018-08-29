//
//  AppDelegate.swift
//  Reusable
//
//  Created by Glauco Moraes on 29/08/18.
//  Copyright © 2018 Glauco Moraes. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    // MARK: - Properties

    var window: UIWindow?
    var mainRouter: MainWireframe?

    // MARK: - Application
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        initWindow()
        initMainRouter()
        launchApp()
        return true
    }


}

extension AppDelegate {
    
    func initWindow() {
        self.window = UIWindow(frame: UIScreen.main.bounds)
        self.window?.makeKeyAndVisible()
    }
    
    func initMainRouter() {
        self.mainRouter = MainWireframe(window: window)
    }
    
    func launchApp() {
        self.mainRouter!.launch()
    }

}
