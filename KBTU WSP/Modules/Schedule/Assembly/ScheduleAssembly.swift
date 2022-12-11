//
//  ScheduleAssembly.swift
//  KBTU WSP
//
//  Created by Arman Sarvadin on 11/12/2022.
//  Copyright © 2022 TEAM WSP. All rights reserved.
//

import UIKit

// For module inputs and outputs
typealias ScheduleConfiguration = (ScheduleModuleInput) -> (Void)

final class ScheduleModuleAssembly {
    /// Assembles Module components and returns a target controller
    ///
    /// - Parameter configuration: optional configuration closure called by module owner
    /// - Returns: Assembled module's ViewController
    func assemble(_ configuration: ScheduleConfiguration? = nil) -> UIViewController {
        let viewModel = ScheduleViewModel()
        let view = ScheduleView(viewModel: viewModel)
        let hostingController = ScheduleHostingController(rootView: view)
        hostingController.viewModel = viewModel
        configuration?(viewModel)
        return hostingController
    }
}
