//
//  JournalViewModel.swift
//  KBTU WSP
//
//  Created by Arman Sarvadin on 11/12/2022.
//  Copyright © 2022 TEAM WSP. All rights reserved.
//

import Combine
import Foundation

final class JournalViewModel: ObservableObject {
    @Published private(set) var journals: [Journal] = []

    required init() {

    }

    func configure(with journals: [Journal]) {
        self.journals = journals
    }

    // MARK: - JournalViewOutput methods
    func didLoad() {
        
    }
}

// MARK: - JournalModuleInput methods
extension JournalViewModel: JournalModuleInput {
	func configure(data: JournalConfigData) {

  }
}
