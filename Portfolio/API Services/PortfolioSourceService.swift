//
//  PortfolioSourceService.swift
//  Portfolio
//
//  Created by Bastien Falcou on 11/3/19.
//  Copyright © 2019 Bastien Falcou. All rights reserved.
//

import Foundation

final class PortfolioSourceService: SourceService {
    private let apiClient: APIClient

    init(apiClient: APIClient) {
        self.apiClient = apiClient
    }

    func getPortfolioSources(completion: @escaping ((Result<[Source]>) -> Void)) {
        apiClient.perform(request: .get, path: "58330c105dd8adce733706f73b707cf4/raw/ec97563a3f39c02b6390307a93ec529f5d26fbe7/portfolio-example.json", properties: nil) { (result: Result<SourcesContainer>) in
            switch result {
            case .success(let value): completion(.success(value: value.sources))
            case .failure(let error): completion(.failure(error: error))
            }
        }
    }
}

private struct SourcesContainer: Codable {
    let sources: [Source]
}

extension SourcesContainer: Serializable {
    static func decode(_ data: Data) throws -> SourcesContainer {
        return try JSONDecoder().decode(SourcesContainer.self, from: data)
    }
}
