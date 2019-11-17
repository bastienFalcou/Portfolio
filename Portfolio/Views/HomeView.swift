//
//  ContentView.swift
//  Portfolio
//
//  Created by Bastien Falcou on 11/3/19.
//  Copyright © 2019 Bastien Falcou. All rights reserved.
//

import SwiftUI

struct HomeView: View {
    private var viewFactory: ViewControllerFactory

    @ObservedObject private var viewModel: HomeViewModel

    init(viewModel: HomeViewModel, viewFactory: ViewControllerFactory) {
        self.viewModel = viewModel
        self.viewFactory = viewFactory
    }

    var body: some View {
        NavigationView {
            VStack(alignment: .leading, spacing: 10) {
                if viewModel.sources.isEmpty {
                  emptySection
                } else {
                  sourcesSection
                }
            }
            .navigationBarTitle("Portfolio")
        }
        .onAppear(perform: viewModel.fetchSources)
    }

    var sourcesSection: some View {
      List {
        ForEach(viewModel.sources, id: \.name) { source in
            NavigationLink(destination: self.viewFactory.sourceDetails(source: source)) {
                SourceRow(viewModel: SourceRowViewModel(source: source))
            }
        }
      }
    }

    var emptySection: some View {
      Section {
        Text("No results")
          .foregroundColor(.gray)
      }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        let mockSourceAPIService = MockSourceAPIService()
        mockSourceAPIService.sourcesResponse = [
            Source(name: "Lloyds Bank", source: 0, currency: 0, amount: 8000),
            Source(name: "Chase Bank", source: 0, currency: 0, amount: 120000),
            Source(name: "Stocks", source: 1, currency: 0, amount: 1000)
        ]
        let viewFactory = ViewControllerFactory(serviceFactory: ServiceFactory(),
                                                apiServiceFactory: APIServiceFactory())
        return HomeView(viewModel: HomeViewModel(sourceAPIService: mockSourceAPIService),
                        viewFactory: viewFactory)
    }
}
