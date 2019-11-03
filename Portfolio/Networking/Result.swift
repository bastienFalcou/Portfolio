//
//  Result.swift
//  Portfolio
//
//  Created by Bastien Falcou on 11/3/19.
//  Copyright © 2019 Bastien Falcou. All rights reserved.
//

import Foundation

enum Result<T> {
    case success(value: T)
    case failure(error: Error)
}
