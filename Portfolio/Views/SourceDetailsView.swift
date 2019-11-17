//
//  SourceDetailsView.swift
//  Portfolio
//
//  Created by Bastien Falcou on 11/16/19.
//  Copyright © 2019 Bastien Falcou. All rights reserved.
//

import SwiftUI

struct SourceDetailsView: View {
    private var viewModel: SourceDetailsViewModel

    init(viewModel: SourceDetailsViewModel) {
        self.viewModel = viewModel
    }

    var body: some View {
        SourceRow(viewModel: SourceRowViewModel(source: viewModel.source))
            .navigationBarTitle(viewModel.source.name)
    }
}

struct SourceDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        let source = Source(name: "Name", source: 0, currency: 0, amount: 8000)
        return SourceDetailsView(viewModel: SourceDetailsViewModel(source: source))
    }
}
