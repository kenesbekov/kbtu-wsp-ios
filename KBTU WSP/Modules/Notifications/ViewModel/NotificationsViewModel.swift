//
//  NotificationsViewModel.swift
//  KBTU WSP
//
//  Created by Abdurakhim Kenesbekov on 19/12/2022.
//  Copyright © 2022 TEAM WSP. All rights reserved.
//

import Combine
import Foundation

final class NotificationsViewModel: ObservableObject {
    @Published private(set) var notifications: [Notification] = []
    
    required init() {
        
    }
    
    func configure(with notifications: [Notification]) {
        self.notifications = notifications
    }

    // MARK: - NotificationsViewOutput methods
    func didLoad() {
        
    }
}

// MARK: - NotificationsModuleInput methods
extension NotificationsViewModel: NotificationsModuleInput {
	func configure(data: NotificationsConfigData) {

  }
}
