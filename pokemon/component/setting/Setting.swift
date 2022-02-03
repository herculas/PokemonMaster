//
//  Setting.swift
//  pokemon
//
//  Created by 宋睿 on 2/2/2022.
//

import SwiftUI

struct Setting: View {
  
  @EnvironmentObject var store: Store
  var settingsBinding: Binding<AppState.Settings> {
    $store.appState.settings
  }
  var settings: AppState.Settings {
    store.appState.settings
  }
  
  var body: some View {
    Form {
      accountSection
      optionSection
      actionSection
    }
  }
  
  var accountSection: some View {
    Section(header: Text("账户")) {
      Picker(selection: settingsBinding.accountBehavior, label: Text("")) {
        ForEach(AppState.Settings.AccountBehavior.allCases, id: \.self) {
          Text($0.text)
        }
      }
      .pickerStyle(SegmentedPickerStyle())
      TextField("电子邮箱", text: settingsBinding.email)
      SecureField("密码", text: settingsBinding.password)
      if settings.accountBehavior == .register {
        SecureField("确认密码", text: settingsBinding.passwordConfirm)
      }
      Button(settings.accountBehavior.text) {
        print("登录/注册")
      }
    }
  }
  
  var optionSection: some View {
    Section(header: Text("选项")) {
      Toggle(isOn: settingsBinding.showEnName) {
        Text("显示英文名")
      }
      Picker(selection: settingsBinding.sorting, label: Text("排序方式")) {
        ForEach(AppState.Settings.Sorting.allCases, id: \.self) {
          Text($0.text)
        }
      }
      Toggle(isOn: settingsBinding.showFavOnly) {
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

extension AppState.Settings.AccountBehavior {
  var text: String {
    switch self {
    case .register: return "注册"
    case .login: return "登录"
    }
  }
}

extension AppState.Settings.Sorting {
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
    Setting().environmentObject(Store())
  }
}
