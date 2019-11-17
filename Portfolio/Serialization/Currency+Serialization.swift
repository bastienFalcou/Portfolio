//
//  File.swift
//  Portfolio
//
//  Created by Bastien Falcou on 11/17/19.
//  Copyright © 2019 Bastien Falcou. All rights reserved.
//

import Foundation

extension Currency: Serializable {
    static func decode(_ data: Data) throws -> Currency {
        return try JSONDecoder().decode(Currency.self, from: data)
    }
}
