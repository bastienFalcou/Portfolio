//
//  Source+Serialization.swift
//  Portfolio
//
//  Created by Bastien Falcou on 11/3/19.
//  Copyright © 2019 Bastien Falcou. All rights reserved.
//

import Foundation

extension PortfolioSource: Serializable {
    static func decode(_ data: Data) throws -> PortfolioSource {
        return try JSONDecoder().decode(PortfolioSource.self, from: data)
    }
}
