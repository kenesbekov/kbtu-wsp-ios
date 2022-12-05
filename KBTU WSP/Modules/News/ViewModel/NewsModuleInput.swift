//
//  NewsModuleInput.swift
//  KBTU WSP
//
//  Created by Arman Sarvadin on 05/12/2022.
//  Copyright © 2022 TEAM WSP. All rights reserved.
//

/// Adapter struct for News initial configuration through NewsModuleInput
struct NewsConfigData {

}

/// Protocol with public methods to configure News from its parent module (usually implemented by this module's ViewModel)
protocol NewsModuleInput: AnyObject {
	/// public configuration method for parent modules (add configurating parameters)
    func configure(data: NewsConfigData)
}
