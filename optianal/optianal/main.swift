//
//  main.swift
//  optianal
//
//  Created by 김민석 on 2021/05/25.
//

import Foundation

func checkOptionalValue(value optional: Any?) {
    switch optional {
    case .none:
        print("This Optional variable is nil")
    case .some(let value):
        print("Value is \(value)")
    }
}

var myName: String? = "yagom"
checkOptionalValue(value: myName)

checkOptionalValue(value: nil)
