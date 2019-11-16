//
//  ContentView.swift
//  Portfolio
//
//  Created by Bastien Falcou on 11/3/19.
//  Copyright © 2019 Bastien Falcou. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var viewModel: HomeViewModel

    init(viewModel: HomeViewModel) {
        self.viewModel = viewModel
    }

    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            if viewModel.sources.isEmpty {
              emptySection
            } else {
              sourcesSection
            }
        }
        .padding()
    }

    var emptySection: some View {
      Section {
        Text("No results")
          .foregroundColor(.gray)
      }
    }

    var sourcesSection: some View {
      Section {
        ForEach(viewModel.sources, id: \.name) { source in
            SourceRow(viewModel: SourceRowViewModel(source: source))
        }
      }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(viewModel: HomeViewModel(sourceAPIService: MockSourceAPIService()))
    }
}
