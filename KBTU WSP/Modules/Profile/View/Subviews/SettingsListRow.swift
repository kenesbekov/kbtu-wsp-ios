//
//  SettingsSwitchRow.swift
//  KBTU WSP
//
//  Created by Arman on 11.12.2022.
//

import SwiftUI

struct SettingsListRow: View {
    var title: String
    var imageColor: Color?
    var imageName: String?
    var rightTitle: String?
    var onTap: (() -> Void)?
    
    var body: some View {
        Button {
            print("Tapped")
        } label: {
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
                    .foregroundColor(.primary)
                
                Spacer()
                
                if let rightTitle {
                    Text(rightTitle)
                        .foregroundColor(.secondary)
                }
                Image("icon.arrow.list")
            }
        }

    }
}

struct SettingsListRow_Previews: PreviewProvider {
    static var previews: some View {
        SettingsListRow(title: "Профиль")
            .previewLayout(.fixed(width: 370, height: 50))
    }
}
