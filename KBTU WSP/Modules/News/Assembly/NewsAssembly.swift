//
//  NewsAssembly.swift
//  KBTU WSP
//
//  Created by Arman Sarvadin on 05/12/2022.
//  Copyright © 2022 TEAM WSP. All rights reserved.
//

import UIKit

// For module inputs and outputs
typealias NewsConfiguration = (NewsModuleInput) -> (Void)

final class NewsModuleAssembly {
    /// Assembles Module components and returns a target controller
    ///
    /// - Parameter configuration: optional configuration closure called by module owner
    /// - Returns: Assembled module's ViewController
    func assemble(_ configuration: NewsConfiguration? = nil) -> UIViewController {
        let viewModel = NewsViewModel()
        let view = NewsView(viewModel: viewModel)
        let hostingController = NewsHostingController(rootView: view)
        hostingController.viewModel = viewModel
        configuration?(viewModel)
        return hostingController
    }
}
