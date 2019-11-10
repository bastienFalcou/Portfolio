//
//  AppDelegate.swift
//  Portfolio
//
//  Created by Bastien Falcou on 11/3/19.
//  Copyright © 2019 Bastien Falcou. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    private lazy var serviceFactory: ServiceFactory = {
        return ServiceFactory()
    }()
    private lazy var apiServiceFactory: APIServiceFactory = {
        return APIServiceFactory()
    }()
    private lazy var viewControllerFactory: ViewControllerFactory = {
        return ViewControllerFactory(serviceFactory: serviceFactory, apiServiceFactory: apiServiceFactory)
    }()

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        return true
    }
}
