//
//  JournalAssembly.swift
//  KBTU WSP
//
//  Created by Arman Sarvadin on 11/12/2022.
//  Copyright © 2022 TEAM WSP. All rights reserved.
//

import UIKit

// For module inputs and outputs
typealias JournalConfiguration = (JournalModuleInput) -> (Void)

final class JournalModuleAssembly {
    /// Assembles Module components and returns a target controller
    ///
    /// - Parameter configuration: optional configuration closure called by module owner
    /// - Returns: Assembled module's ViewController
    func assemble(_ configuration: JournalConfiguration? = nil) -> UIViewController {
        let viewModel = JournalViewModel()
        let view = JournalView(viewModel: viewModel)
        let hostingController = JournalHostingController(rootView: view)
        hostingController.viewModel = viewModel
        configuration?(viewModel)
        return hostingController
    }
}
