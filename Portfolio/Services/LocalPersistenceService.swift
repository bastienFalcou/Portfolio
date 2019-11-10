//
//  LocalPersistenceService.swift
//  Portfolio
//
//  Created by Bastien Falcou on 11/10/19.
//  Copyright © 2019 Bastien Falcou. All rights reserved.
//

import Foundation

protocol LocalPersistenceService {
    func set<T>(value: T, key: String)
    func getValue<T>(for key: String) -> T?
    func removeValue(for key: String)
}
