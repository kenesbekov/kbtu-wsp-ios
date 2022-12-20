//
//  NewsHostingController.swift
//  KBTU WSP
//
//  Created by Arman Sarvadin on 05/12/2022.
//  Copyright © 2022 TEAM WSP. All rights reserved.
//

import Foundation
import SwiftUI

final class NewsHostingController: UIHostingController<NewsView> {
    var viewModel: NewsViewModel?
    override func viewDidLoad() {
        super.viewDidLoad()

        rootView.showProfileButtonDidTap = showProfile
        rootView.showNotificationsButtonDidTap = showNotifications
    }

    private func showProfile() {
        let profile = ProfileModuleAssembly().assemble()
        profile.hidesBottomBarWhenPushed = true
        navigationController?.pushViewController(profile, animated: true)
    }

    private func showNotifications() {
        let notifications = NotificationsModuleAssembly().assemble()
        notifications.hidesBottomBarWhenPushed = true
        navigationController?.pushViewController(notifications, animated: true)
    }
}
