//
//  ViewControllerFactory.swift
//  Portfolio
//
//  Created by Bastien Falcou on 11/9/19.
//  Copyright © 2019 Bastien Falcou. All rights reserved.
//

import UIKit

final class ViewControllerFactory {
    private let serviceFactory: ServiceFactory
    private let apiServiceFactory: APIServiceFactory

    init(serviceFactory: ServiceFactory, apiServiceFactory: APIServiceFactory) {
        self.serviceFactory = serviceFactory
        self.apiServiceFactory = apiServiceFactory
    }

//    public func home() -> HomeViewController {
//        let viewModel = HomeViewModel(sourceAPIService: apiServiceFactory.sourceAPIService)
//        return HomeViewController(viewModel: viewModel)
//    }
}
