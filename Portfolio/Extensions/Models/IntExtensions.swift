//
//  IntExtensions.swift
//  Portfolio
//
//  Created by Bastien Falcou on 11/17/19.
//  Copyright © 2019 Bastien Falcou. All rights reserved.
//

import Foundation

extension Int {
    func formatted(with currency: Currency) -> String {
        switch currency {
            case .dollars: return "$\(self)"
            case .euros: return "\(self)€"
            case .pounds: return "\(self)£"
        }
    }
}
