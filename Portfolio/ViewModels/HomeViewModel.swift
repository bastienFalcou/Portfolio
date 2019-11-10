//
//  HomeViewModel.swift
//  Portfolio
//
//  Created by Bastien Falcou on 11/9/19.
//  Copyright © 2019 Bastien Falcou. All rights reserved.
//

import Foundation

final class HomeViewModel {
    private let sourceAPIService: SourceAPIService

    var sources: [Source] = []

    init(sourceAPIService: SourceAPIService) {
        self.sourceAPIService = sourceAPIService
    }

    func fetchSources() {
        sourceAPIService.getPortfolioSources { [weak self] result in
            switch result {
            case .failure(let error): print(error)
            case .success(let value): self?.sources = value
            }
        }
    }
}
