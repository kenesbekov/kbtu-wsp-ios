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
    required init() {

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
