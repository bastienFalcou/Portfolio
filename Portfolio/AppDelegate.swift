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
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        let apiClient = PortfolioAPIClient(baseURL: "https://gist.github.com/bastienFalcou/")
        let sourceService = PortfolioSourceService(apiClient: apiClient)

        sourceService.getPortfolioSources { result in
            switch result {
            case .failure(let error): print(error)
            case .success(let value): print(value)
            }
        }

        return true
    }
}
