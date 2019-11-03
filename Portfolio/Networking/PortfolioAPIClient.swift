//
//  PortfolioAPIClient.swift
//  Portfolio
//
//  Created by Bastien Falcou on 11/3/19.
//  Copyright © 2019 Bastien Falcou. All rights reserved.
//

import Foundation

final class PortfolioAPIClient: APIClient {
    private let defaultSession = URLSession(configuration: .default)
    let baseURL: String

    init(baseURL: String) {
        self.baseURL = baseURL
    }

    func perform<T: Serializable>(request: Request, path: String, properties: [String: Any]?, completion: @escaping ((Result<T>) -> (Void))) {
        guard let url = URL(string: baseURL + path) else {
            completion(.failure(error: APIError.invalidURL))
            return
        }
        defaultSession.dataTask(with: url) { data, response, error in
            if let error = error {
                return completion(.failure(error: error))
            }
            guard let data = data else {
                return completion(.failure(error: APIError.emptyResponse))
            }
            do {
                let result = try T.decode(data)
                return completion(.success(value: result))
            } catch {
                return completion(.failure(error: error))
            }
        }.resume()
    }
}
