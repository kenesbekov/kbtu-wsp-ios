//
//  AttendanceView.swift
//  KBTU WSP
//
//  Created by Arman Sarvadin on 11/12/2022.
//  Copyright © 2022 TEAM WSP. All rights reserved.
//

import SwiftUI

struct AttendanceView: View {
    @ObservedObject var viewModel: AttendanceViewModel
    var body: some View {
        Text("Hello world!")
    }
}

struct AttendanceView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            AttendanceView(viewModel: AttendanceViewModel())
        }
    }
}