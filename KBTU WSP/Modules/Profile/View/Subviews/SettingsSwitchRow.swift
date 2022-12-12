//
//  SettingsSwitchRow.swift
//  KBTU WSP
//
//  Created by Arman on 12.12.2022.
//

import SwiftUI
import Combine

struct SettingsSwitchRow: View {
    var title: String
    var imageColor: Color?
    var imageName: String?
    @State var isOn: Bool = false
    var onChange: ((Bool) -> Void)?
    
    var body: some View {
        Toggle(isOn: $isOn) {
            HStack {
                if let imageName, let imageColor {
                    ZStack {
                        imageColor
                        Image(systemName: imageName)
                            .foregroundColor(.white)
                    }
                    .frame(width: 32, height: 32)
                    .clipShape(Circle())
                }
                
                Text(title)
            }
        }.onReceive([isOn].publisher.first()) { changedValue in
            onChange?(changedValue)
        }
    }
}

struct SettingsSwitchRow_Previews: PreviewProvider {
    static var previews: some View {
        SettingsSwitchRow(title: "Внешний вид")
    }
}
