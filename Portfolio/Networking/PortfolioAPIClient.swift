//
//  PortfolioAPIClient.swift
//  Portfolio
//
//  Created by Bastien Falcou on 11/3/19.
//  Copyright © 2019 Bastien Falcou. All rights reserved.
//

import Foundation
import Combine

final class PortfolioAPIClient: APIClient {
    private let defaultSession = URLSession(configuration: .default)
    let baseURL: String

    init(baseURL: String) {
        self.baseURL = baseURL
    }

    func perform<T: Serializable>(request: Request, path: String, properties: [String: Any]?) -> AnyPublisher<T, Error> {
        guard let url = URL(string: baseURL + path) else {
            return Fail(error: APIError.invalidURL).eraseToAnyPublisher()
        }
        return defaultSession.dataTaskPublisher(for: url)
            .map { $0.data }
            .tryMap { try T.decode($0) }
            .eraseToAnyPublisher()
    }
}
