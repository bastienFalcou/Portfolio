//
//  Source.swift
//  Portfolio
//
//  Created by Bastien Falcou on 11/3/19.
//  Copyright © 2019 Bastien Falcou. All rights reserved.
//

import Foundation
import Combine

protocol SourceAPIService {
    @discardableResult
    func getPortfolioSources() -> AnyPublisher<[Source], Error>
}
