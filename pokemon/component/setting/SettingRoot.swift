//
//  RootView.swift
//  pokemon
//
//  Created by 宋睿 on 2/2/2022.
//

import SwiftUI

struct SettingRoot: View {
    var body: some View {
        NavigationView {
            Setting().navigationTitle("设置")
        }
    }
}

struct SettingRoot_Previews: PreviewProvider {
    static var previews: some View {
        SettingRoot()
    }
}
