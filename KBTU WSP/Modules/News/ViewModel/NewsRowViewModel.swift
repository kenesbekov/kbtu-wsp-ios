//
//  NewsRowViewModel.swift
//  KBTU WSP
//
//  Created by Adam on 17.12.2022.
//

import Foundation
import SwiftUI

final class NewsRowViewModel {
    var title: String = "Об отмене занятий профессора Исахова Алибека Абдиашимовича"
    var postDate: String = "Октябрь 21, 2022"
    var comments: String = "2"
    var newsSeen: Bool = false

    var titleColor: Color {
        newsSeen ? .primary : .blue
    }

    var backgroundColor: Color {
        newsSeen ? .secondary : .blue.opacity(0.14)
    }

    private let news: News

    init(news: News) {
        self.news = news
    }
}
