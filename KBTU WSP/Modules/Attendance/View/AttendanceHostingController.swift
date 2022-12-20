//
//  AttendanceHostingController.swift
//  KBTU WSP
//
//  Created by Arman Sarvadin on 11/12/2022.
//  Copyright © 2022 TEAM WSP. All rights reserved.
//

import Foundation
import SwiftUI

final class AttendanceHostingController: UIHostingController<AttendanceView> {
    var viewModel: AttendanceViewModel?
    override func viewDidLoad() {
        super.viewDidLoad()

        rootView.showNotificationsButtonDidTap = showNotifications
    }

    private func showNotifications() {
        let notifications = NotificationsModuleAssembly().assemble()
        navigationController?.pushViewController(notifications, animated: true)
    }
}
