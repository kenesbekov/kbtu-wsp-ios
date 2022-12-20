//
//  JournalHostingController.swift
//  KBTU WSP
//
//  Created by Arman Sarvadin on 11/12/2022.
//  Copyright © 2022 TEAM WSP. All rights reserved.
//

import Foundation
import SwiftUI

final class JournalHostingController: UIHostingController<JournalView> {
    var viewModel: JournalViewModel?
    override func viewDidLoad() {
        super.viewDidLoad()

        rootView.showNotificationsButtonDidTap = showNotifications
    }

    private func showNotifications() {
        let notifications = NotificationsModuleAssembly().assemble()
        notifications.hidesBottomBarWhenPushed = true
        navigationController?.pushViewController(notifications, animated: true)
    }
}
