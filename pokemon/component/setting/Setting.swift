//
//  Setting.swift
//  pokemon
//
//  Created by 宋睿 on 2/2/2022.
//

import SwiftUI

class Settings: ObservableObject {
    
    enum AccountBehavior: CaseIterable {
        case register
        case login
    }
    
    enum Sorting: CaseIterable {
        case id
        case name
        case color
        case favorite
    }
    
    @Published var accountBehavior = AccountBehavior.login
    @Published var email = ""
    @Published var password = ""
    @Published var passwordConfirm = ""
    
    @Published var showEnName = true
    @Published var sorting = Sorting.id
    @Published var showFavOnly = false
}

struct Setting: View {
    
    @ObservedObject var settings = Settings()
    
    var body: some View {
        Form {
            accountSection
            optionSection
            actionSection
        }
    }
    
    var accountSection: some View {
        Section(header: Text("账户")) {
            Picker(selection: $settings.accountBehavior, label: Text("")) {
                ForEach(Settings.AccountBehavior.allCases, id: \.self) {
                    Text($0.text)
                }
            }
            .pickerStyle(SegmentedPickerStyle())
            TextField("电子邮箱", text: $settings.email)
            SecureField("密码", text: $settings.password)
            if settings.accountBehavior == .register {
                SecureField("确认密码", text: $settings.passwordConfirm)
            }
            Button(settings.accountBehavior.text) {
                print("登录/注册")
            }
        }
    }
    
    var optionSection: some View {
        Section(header: Text("选项")) {
            Toggle(isOn: $settings.showEnName) {
                Text("显示英文名")
            }
            Picker(selection: $settings.sorting, label: Text("排序方式")) {
                ForEach(Settings.Sorting.allCases, id: \.self) {
                    Text($0.text)
                }
            }
            Toggle(isOn: $settings.showFavOnly) {
                Text("只显示收藏")
            }
        }
    }
    
    var actionSection: some View {
        Section {
            Button {
                print("清空缓存")
            } label: {
                Text("清空缓存")
                    .foregroundColor(.red)
            }

        }
    }
}

extension Settings.AccountBehavior {
    var text: String {
        switch self {
        case .register: return "注册"
        case .login: return "登录"
        }
    }
}

extension Settings.Sorting {
    var text: String {
        switch self {
        case .id: return "ID"
        case .name: return "名称"
        case .color: return "颜色"
        case .favorite: return "最爱"
        }
    }
}

struct Setting_Previews: PreviewProvider {
    static var previews: some View {
        Setting()
    }
}
