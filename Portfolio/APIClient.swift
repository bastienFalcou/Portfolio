//
//  APIClient.swift
//  Portfolio
//
//  Created by Bastien Falcou on 11/3/19.
//  Copyright © 2019 Bastien Falcou. All rights reserved.
//

import Foundation

enum Request {
    case get
    case post
}

enum APIError: Error {
    case invalidURL
    case emptyResponse
}

protocol APIClient {
    var baseURL: String { get }
    func perform(request: Request, path: String, properties: [String: Any]?, completion: @escaping ((String?, Error?) -> (Void)))
}

final class PortfolioAPIClient: APIClient {
    private let defaultSession = URLSession(configuration: .default)
    let baseURL: String

    init(baseURL: String) {
        self.baseURL = baseURL
    }

    func perform(request: Request, path: String, properties: [String : Any]?, completion: @escaping ((String?, Error?) -> (Void))) {
        guard let url = URL(string: baseURL + path) else {
            completion(nil, APIError.invalidURL)
            return
        }
        defaultSession.dataTask(with: url) { data, response, error in
            if let error = error {
                completion(nil, error)
                return
            }
            guard let data = data else {
                completion(nil, APIError.emptyResponse)
                return
            }
            completion(data.base64EncodedString(), nil)
        }.resume()
    }
}
