//
//  Serializable.swift
//  Portfolio
//
//  Created by Bastien Falcou on 11/3/19.
//  Copyright © 2019 Bastien Falcou. All rights reserved.
//

import Foundation

protocol Serializable {
    static func decode(_ data: Data) throws -> Self
}
