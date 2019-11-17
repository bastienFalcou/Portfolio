//
//  ViewControllerFactory.swift
//  Portfolio
//
//  Created by Bastien Falcou on 11/9/19.
//  Copyright © 2019 Bastien Falcou. All rights reserved.
//

import SwiftUI

final class ViewFactory {
    private let serviceFactory: ServiceFactory
    private let apiServiceFactory: APIServiceFactory

    init(serviceFactory: ServiceFactory, apiServiceFactory: APIServiceFactory) {
        self.serviceFactory = serviceFactory
        self.apiServiceFactory = apiServiceFactory
    }

    func home() -> HomeView {
        let viewModel = HomeViewModel(sourceAPIService: apiServiceFactory.sourceAPIService)
        return HomeView(viewModel: viewModel, viewFactory: self)
    }

    func sourceDetails(source: Source) -> SourceDetailsView {
        let viewModel = SourceDetailsViewModel(source: source)
        return SourceDetailsView(viewModel: viewModel)
    }
}
