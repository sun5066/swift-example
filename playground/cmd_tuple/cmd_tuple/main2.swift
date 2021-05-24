//
//  main.swift
//  cmd_tuple
//
//  Created by 김민석 on 2021/05/20.
//

import Foundation

var persons:[Any] = []

for i in 0...2 {
    print("이름 입력")
    let name: String? = readLine()

    print("나이 입력")
    let age: Int = Int(readLine()!) ?? 0

    let person: (memNo: Int, name: String, age: Int) = (i, name!, Int(age))
    persons.append(person)
}

print(persons)
print("count: \(persons.count)")
