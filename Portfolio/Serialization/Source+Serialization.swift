//
//  Source+Serialization.swift
//  Portfolio
//
//  Created by Bastien Falcou on 11/3/19.
//  Copyright © 2019 Bastien Falcou. All rights reserved.
//

import Foundation

extension Source: Serializable {
    static func decode(_ data: Data) throws -> Source {
        return try JSONDecoder().decode(Source.self, from: data)
    }
}
