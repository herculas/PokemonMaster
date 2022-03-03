//
//  String.swift
//  PokeMaster
//
//  Created by 宋睿 on 2/3/2022.
//

import Foundation

extension String {
  
  var carriageReturnRemoved: String {
    split(separator: "\n").joined(separator: "")
  }
  
  var carriageReturnRemovedWithSpace: String {
    split(separator: "\n").joined(separator: " ")
  }
  
  var isEmailAddress: Bool {
    let regularExpression = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
    let emailPredicate = NSPredicate(format: "SELF MATCHES %@", regularExpression)
    return emailPredicate.evaluate(with: self)
  }
  
}
