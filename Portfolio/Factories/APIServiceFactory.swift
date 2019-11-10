//
//  PortfolioAPIServiceFactory.swift
//  Portfolio
//
//  Created by Bastien Falcou on 11/9/19.
//  Copyright © 2019 Bastien Falcou. All rights reserved.
//

import Foundation

final class APIServiceFactory {
    private lazy var apiClient: APIClient = {
        return PortfolioAPIClient(baseURL: "https://gist.github.com/bastienFalcou/")
    }()

    lazy var sourceAPIService: SourceAPIService = {
        return PortfolioSourceAPIService(apiClient: apiClient)
    }()
}
