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
            .bold()
            .kerning(1.5)
            .foregroundColor(.gray)
        lineSpacing(5)
        Text("\(viewModel.source.amount.formatted(with: viewModel.source.currency))")
      }
    }
  }
}

struct SourceRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            SourceRow(viewModel: SourceRowViewModel(
                source: Source(name: "Source Short Name",
                               source: 0,
                               currency: .dollars,
                               amount: 8000)
                )
            ).previewLayout(.fixed(width: 200, height: 120))
            SourceRow(viewModel: SourceRowViewModel(
                source: Source(name: "Source With A Very Long name So Long It goes Out",
                               source: 1,
                               currency: .dollars,
                               amount: 100000)
                )
            ).previewLayout(.fixed(width: 350, height: 70))
        }
    }
}
