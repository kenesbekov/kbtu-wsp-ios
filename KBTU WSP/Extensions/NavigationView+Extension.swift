//
//  NavigationView+Extention.swift
//  KBTU WSP
//
//  Created by Arman on 11.12.2022.
//

import Foundation
import UIKit

extension UINavigationController {
    static func generate(
        rootViewController: UIViewController,
        image: UIImage,
        title: String,
        prefersLargeTitle: Bool = false
    ) -> UIViewController {
        let navigationVC = UINavigationController(rootViewController: rootViewController)
        navigationVC.tabBarItem.image = image
        navigationVC.tabBarItem.title = title
        navigationVC.navigationBar.prefersLargeTitles = prefersLargeTitle
        return navigationVC
    }
}
