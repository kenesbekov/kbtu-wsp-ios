//
//  AttendanceAssembly.swift
//  KBTU WSP
//
//  Created by Arman Sarvadin on 11/12/2022.
//  Copyright © 2022 TEAM WSP. All rights reserved.
//

import UIKit

// For module inputs and outputs
typealias AttendanceConfiguration = (AttendanceModuleInput) -> (Void)

final class AttendanceModuleAssembly {
    /// Assembles Module components and returns a target controller
    ///
    /// - Parameter configuration: optional configuration closure called by module owner
    /// - Returns: Assembled module's ViewController
    func assemble(_ configuration: AttendanceConfiguration? = nil) -> UIViewController {
        let viewModel = AttendanceViewModel()
        let view = AttendanceView(viewModel: viewModel)
        let hostingController = AttendanceHostingController(rootView: view)
        hostingController.viewModel = viewModel
        configuration?(viewModel)
        return hostingController
    }
}
