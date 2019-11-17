//
//  HomeViewModel.swift
//  Portfolio
//
//  Created by Bastien Falcou on 11/9/19.
//  Copyright © 2019 Bastien Falcou. All rights reserved.
//

import Foundation
import Combine
import SwiftUI

final class HomeViewModel: ObservableObject, Identifiable {
    private let sourceAPIService: SourceAPIService
    private var disposables = Set<AnyCancellable>()

    @Published private(set) var sources: [Source] = []

    init(sourceAPIService: SourceAPIService) {
        self.sourceAPIService = sourceAPIService
    }

    func fetchSources() {
        sourceAPIService.getPortfolioSources()
            .receive(on: DispatchQueue.main)
            .catch { _ in Just([]) }
            .assign(to: \.sources, on: self)
            .store(in: &disposables)
    }
}
