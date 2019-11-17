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

struct SourceRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            SourceRow(viewModel: SourceRowViewModel(
                source: Source(name: "Source 1", source: 0, currency: 0, amount: 8000))
            )
            SourceRow(viewModel: SourceRowViewModel(
                source: Source(name: "Source 2", source: 1, currency: 0, amount: 10000))
            )
        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
}
