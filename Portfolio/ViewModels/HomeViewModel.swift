//
//  HomeViewModel.swift
//  Portfolio
//
//  Created by Bastien Falcou on 11/9/19.
//  Copyright © 2019 Bastien Falcou. All rights reserved.
//

import Foundation
import Combine

final class HomeViewModel {
    private let sourceAPIService: SourceAPIService

    private(set) var sources: [Source] = []

    init(sourceAPIService: SourceAPIService) {
        self.sourceAPIService = sourceAPIService
    }

    func fetchSources() {
        sourceAPIService.getPortfolioSources()
            .catch { _ in Just([]) }
            .assign(to: \.sources, on: self)
    }
}
