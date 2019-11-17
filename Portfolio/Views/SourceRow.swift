//
//  SourceRow.swift
//  Portfolio
//
//  Created by Bastien Falcou on 11/16/19.
//  Copyright © 2019 Bastien Falcou. All rights reserved.
//

import SwiftUI

struct SourceRow: View {
  private let viewModel: SourceRowViewModel

  init(viewModel: SourceRowViewModel) {
    self.viewModel = viewModel
  }

  var body: some View {
    HStack {
      VStack {
        Text(viewModel.source.name)

        HStack {
            Text("\(viewModel.source.amount)")
            Text("\(viewModel.source.currency)")
        }
      }
    }
  }
}
