//
//  JournalView.swift
//  KBTU WSP
//
//  Created by Arman Sarvadin on 11/12/2022.
//  Copyright © 2022 TEAM WSP. All rights reserved.
//

import SwiftUI

fileprivate enum Mocks {
    static let journals: [Journal] = {
        var array: [Journal] = []
        for i in 1..<10 {
            let journal = Journal(id: 1, name: "Лекция \(1)", date: Date(), status: .present, points: 1)
            array.append(journal)
        }
        return array
    }()
}

struct JournalView: View {
    @ObservedObject var viewModel: JournalViewModel

    init(viewModel: JournalViewModel) {
        viewModel.configure(with: Mocks.journals)
        self.viewModel = viewModel
    }

    var body: some View {
        ScrollView {
            VStack {
                ForEach(viewModel.journals) { journal in
                    JournalRowView(viewModel: JournalRowViewModel(journal: journal))
                }
            }
        }
        .toolbar {
            Button {
            } label: {
                Image(systemName: "bell.badge")
            }
        }
    }
}

struct JournalView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            JournalView(viewModel: JournalViewModel())
        }
    }
}
