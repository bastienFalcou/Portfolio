//
//  PortfolioLocalPersistenceService.swift
//  Portfolio
//
//  Created by Bastien Falcou on 11/10/19.
//  Copyright © 2019 Bastien Falcou. All rights reserved.
//

import Foundation

final class PortfolioLocalPersistenceService: LocalPersistenceService {
    func set<T>(value: T, key: String) {
        UserDefaults.standard.set(value, forKey: key)
    }

    func getValue<T>(for key: String) -> T? {
        return UserDefaults.standard.object(forKey: key) as? T
    }

    func removeValue(for key: String) {
        UserDefaults.standard.removeObject(forKey: key)
    }
}
