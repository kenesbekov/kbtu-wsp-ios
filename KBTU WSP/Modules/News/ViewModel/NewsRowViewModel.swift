//
//  NewsRowViewModel.swift
//  KBTU WSP
//
//  Created by Adam on 17.12.2022.
//

import Foundation
import SwiftUI

final class NewsRowViewModel {
    var title: String {
        news.title
    }

    var postDate: String {
        formatDate(from: news.postDate)
    }

    var comments: String {
        "\(news.comments)"
    }
    
    var newsSeen: Bool {
        news.haveSeen
    }

    var titleColor: Color {
        newsSeen ? .primary : .blue
    }

    var backgroundColor: Color {
        newsSeen ? .secondary : .blue.opacity(0.14)
    }

    private func formatDate(from date: Date) -> String {
        let dateFormmater = DateFormatter()
        dateFormmater.dateFormat = "MMMM d, yyyy"
        return dateFormmater.string(from: date)
    }

    private let news: News

    init(news: News) {
        self.news = news
    }
}
