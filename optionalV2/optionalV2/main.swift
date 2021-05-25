//
//  main.swift
//  optionalV2
//
//  Created by 김민석 on 2021/05/25.
//

import Foundation

var myName: String? = "yagom"

if var name = myName {
    name = "sun"
    print("My name is \(name)")
} else {
    print("myName == nil")
}
