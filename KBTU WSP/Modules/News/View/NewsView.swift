//
//  NewsView.swift
//  KBTU WSP
//
//  Created by Arman Sarvadin on 05/12/2022.
//  Copyright © 2022 TEAM WSP. All rights reserved.
//

import SwiftUI

fileprivate enum NewsMocks {
    static let news: [News] = {
        var array: [News] = []
        for i in 0..<10 {
            let new = News(
                id: i,
                title: "Об отмене занятий профессора Исахова Алибека Абдиашимовича",
                postDate: Date(),
                comments: 12,
                haveSeen: false
            )
            array.append(new)
        }
        return array
    }()
}

struct NewsView: View {
    @ObservedObject var viewModel: NewsViewModel
    var showNotificationsButtonDidTap: (() -> Void)?

    init(viewModel: NewsViewModel) {
        viewModel.configure(with: NewsMocks.news)
        self.viewModel = viewModel
    }

    var body: some View {
        ScrollView {
            VStack(spacing: 12) {
                ForEach(viewModel.news) { news in
                    NewsRowView(viewModel: NewsRowViewModel(news: news))
                }
            }
        }
        .toolbar {
            Button {
                showNotificationsButtonDidTap?()
            } label: {
                Image(systemName: "bell.badge")
            }
        }
        .scrollIndicators(.hidden)
    }
}

struct NewsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            NewsView(viewModel: NewsViewModel())
        }
    }
}
