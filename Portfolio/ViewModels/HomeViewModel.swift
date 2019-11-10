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

    init(sourceAPIService: SourceAPIService) {
        self.sourceAPIService = sourceAPIService
    }
}
