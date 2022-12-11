//
//  ProfileView.swift
//  KBTU WSP
//
//  Created by Arman Sarvadin on 11/12/2022.
//  Copyright © 2022 TEAM WSP. All rights reserved.
//

import SwiftUI

struct ProfileView: View {
    @ObservedObject var viewModel: ProfileViewModel
    var body: some View {
        List {
            
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ProfileView(viewModel: ProfileViewModel())
        }
    }
}
