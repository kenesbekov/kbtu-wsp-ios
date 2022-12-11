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
    required init() {

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
