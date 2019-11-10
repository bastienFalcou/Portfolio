//
//  PortfolioUserService.swift
//  Portfolio
//
//  Created by Bastien Falcou on 11/9/19.
//  Copyright © 2019 Bastien Falcou. All rights reserved.
//

import Foundation

final class PortfolioUserService: UserService {
    let localPersistenceService: LocalPersistenceService

    init(localPersistenceService: LocalPersistenceService) {
        self.localPersistenceService = localPersistenceService
    }

    private let userLocalPersistenceKey = "portfolio.user.key"
    var user: User? {
        get {
            return localPersistenceService.getValue(for: userLocalPersistenceKey)
        }
        set {
            guard let user = newValue else {
                return localPersistenceService.removeValue(for: userLocalPersistenceKey)
            }
            localPersistenceService.set(value: user, key: userLocalPersistenceKey)
        }
    }
}
