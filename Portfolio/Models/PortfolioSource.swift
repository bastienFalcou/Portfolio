//
//  Source.swift
//  Portfolio
//
//  Created by Bastien Falcou on 11/3/19.
//  Copyright © 2019 Bastien Falcou. All rights reserved.
//

import Foundation

struct PortfolioSource: Codable {
    let name: String
    let source: Int
    let currency: Int
    let amount: Int
}
