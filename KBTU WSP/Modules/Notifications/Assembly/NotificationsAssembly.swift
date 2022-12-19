//
//  NotificationsAssembly.swift
//  KBTU WSP
//
//  Created by Abdurakhim Kenesbekov on 19/12/2022.
//  Copyright © 2022 TEAM WSP. All rights reserved.
//

import UIKit

// For module inputs and outputs
typealias NotificationsConfiguration = (NotificationsModuleInput) -> (Void)

final class NotificationsModuleAssembly {
    /// Assembles Module components and returns a target controller
    ///
    /// - Parameter configuration: optional configuration closure called by module owner
    /// - Returns: Assembled module's ViewController
    func assemble(_ configuration: NotificationsConfiguration? = nil) -> UIViewController {
        let viewModel = NotificationsViewModel()
        let view = NotificationsView(viewModel: viewModel)
        let hostingController = NotificationsHostingController(rootView: view)
        hostingController.viewModel = viewModel
        configuration?(viewModel)
        return hostingController
    }
}
