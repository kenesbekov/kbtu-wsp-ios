//
//  ScheduleView.swift
//  KBTU WSP
//
//  Created by Arman Sarvadin on 11/12/2022.
//  Copyright © 2022 TEAM WSP. All rights reserved.
//

import SwiftUI

struct ScheduleView: View {
    @ObservedObject var viewModel: ScheduleViewModel
    var body: some View {
        Text("Hello world!")
    }
}

struct ScheduleView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ScheduleView(viewModel: ScheduleViewModel())
        }
    }
}