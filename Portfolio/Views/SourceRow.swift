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
                source: Source(name: "Source Short Name",
                               source: 0,
                               currency: 0,
                               amount: 8000)
                )
            ).previewLayout(.fixed(width: 200, height: 120))
            SourceRow(viewModel: SourceRowViewModel(
                source: Source(name: "Source With A Very Long name So Long It goes Out",
                               source: 1,
                               currency: 0,
                               amount: 100000)
                )
            ).previewLayout(.fixed(width: 350, height: 70))
        }
    }
}
