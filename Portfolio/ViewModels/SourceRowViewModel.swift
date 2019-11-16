//
//  File.swift
//  Portfolio
//
//  Created by Bastien Falcou on 11/16/19.
//  Copyright © 2019 Bastien Falcou. All rights reserved.
//

import Foundation
import SwiftUI

final class SourceRowViewModel: Identifiable {
    let source: Source

    init(source: Source) {
        self.source = source
    }
}
