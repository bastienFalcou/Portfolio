//
//  PortfolioServiceFactory.swift
//  Portfolio
//
//  Created by Bastien Falcou on 11/9/19.
//  Copyright © 2019 Bastien Falcou. All rights reserved.
//

import Foundation

final class ServiceFactory {
    lazy var localPersistenceService: LocalPersistenceService = {
        return PortfolioLocalPersistenceService()
    }()

    lazy var userService: UserService = {
        return PortfolioUserService(localPersistenceService: localPersistenceService)
    }()
}
