//
//  main.swift
//  function
//
//  Created by 김민석 on 2021/05/24.
//

import Foundation

func setPerson(name param1: String, age param2: Int) -> (String, Int) {
    return (param1, param2)
}

let personTuple: (name: String, age: Int) = setPerson(name: "unknown", age: 25)
print(personTuple)

