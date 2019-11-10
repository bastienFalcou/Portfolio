//
//  Source.swift
//  Portfolio
//
//  Created by Bastien Falcou on 11/3/19.
//  Copyright © 2019 Bastien Falcou. All rights reserved.
//

import Foundation

protocol SourceAPIService {
    func getPortfolioSources(completion: @escaping ((Result<[Source]>) -> Void))
}
