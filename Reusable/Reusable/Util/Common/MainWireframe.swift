//
//  MainWireframe.swift
//  Reusable
//
//  Created by Glauco Moraes on 29/08/18.
//  Copyright © 2018 Glauco Moraes. All rights reserved.
//

import UIKit

class MainWireframe: UINavigationController {

    // MARK: - Constants
    var window: UIWindow?
    
    // MARK: - Constructors
    convenience init(window: UIWindow?) {
        self.init()
        self.window = window
        self.window?.backgroundColor = UIColor.black
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.barStyleBlack()
    }
    
    func launch() {
        self.viewControllers = [start()]
        self.window?.rootViewController = self
    }
    
    func setViewController(_ controller: UIViewController) {
        self.viewControllers = [controller]
    }

}
