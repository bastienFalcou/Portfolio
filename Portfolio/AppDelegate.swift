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
        apiClient.perform(request: .get, path: "58330c105dd8adce733706f73b707cf4", properties: nil) { string, error in
            if let error = error {
                print("An error occurred: \(error)")
                return
            }
            print(string ?? "<Empty String>")
        }
        return true
    }
}
