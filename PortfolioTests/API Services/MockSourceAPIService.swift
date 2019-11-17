//
//  MockSourceAPIService.swift
//  PortfolioTests
//
//  Created by Bastien Falcou on 11/16/19.
//  Copyright © 2019 Bastien Falcou. All rights reserved.
//

import Foundation
import Combine

final class MockSourceAPIService: SourceAPIService {
    var sourcesResponse: [Source]?
    var error: Error?

    @discardableResult
    func getPortfolioSources() -> AnyPublisher<[Source], Error> {
        return Future<[Source], Error> { promise in
            if let error = self.error {
                promise(.failure(error))
                return
            }
            promise(.success(self.sourcesResponse ?? []))
        }.eraseToAnyPublisher()
    }
}
