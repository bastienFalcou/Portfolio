//
//  APIClient.swift
//  Portfolio
//
//  Created by Bastien Falcou on 11/3/19.
//  Copyright © 2019 Bastien Falcou. All rights reserved.
//

import Foundation
import Combine

protocol APIClient {
    var baseURL: String { get }
    func perform<T: Serializable>(request: Request, path: String, properties: [String: Any]?) -> AnyPublisher<T, Error>
}
