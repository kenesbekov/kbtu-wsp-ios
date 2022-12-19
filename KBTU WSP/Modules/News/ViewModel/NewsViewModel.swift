//
//  NewsViewModel.swift
//  KBTU WSP
//
//  Created by Arman Sarvadin on 05/12/2022.
//  Copyright © 2022 TEAM WSP. All rights reserved.
//

import Combine
import Foundation

final class NewsViewModel: ObservableObject {
    @Published private(set) var news: [News] = []

    required init() {

    }

    func configure(with news: [News]) {
        self.news = news
    }

    // MARK: - NewsViewOutput methods
    func didLoad() {
        
    }
}

// MARK: - NewsModuleInput methods
extension NewsViewModel: NewsModuleInput {
	func configure(data: NewsConfigData) {

  }
}
