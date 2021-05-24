//
//  main.swift
//  lableLoop
//
//  Created by 김민석 on 2021/05/24.
//

import Foundation

var rndList: [Int] = []
var multipleList: [Int] = []

createList: while true {
    let rnd = Int(arc4random_uniform(899) + 100)
    rndList.append(rnd)
    
    if rndList.count > 100 {
        break createList
    }
}

var index = 0
computations: while true {
    let value = rndList[index]
    if value % 3 == 0 {
        multipleList.append(value)
        
        if multipleList.count == 10 {
            break computations
        }
    }
    index += 1
}

print("결과 사이즈", multipleList.count)
print("결과 리스트", multipleList)
