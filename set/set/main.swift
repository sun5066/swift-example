//
//  main.swift
//  set
//
//  Created by 김민석 on 2021/05/21.
//

import Foundation

var intSet: Set<Int> = []
var cycle = 0
while (true) {
    intSet.insert(Int(arc4random_uniform(5) + 1))
    
    if intSet.count == 5 {
        break
    }
    cycle += 1
}

print(intSet, cycle)
