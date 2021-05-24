//
//  main.swift
//  function-pointer
//
//  Created by 김민석 on 2021/05/24.
//

import Foundation
typealias ChangeSwitch = ((Int, Int)) -> (Int, Int)
 
private func changeSwitch(data: (Int, Int)) -> (Int, Int) {
    return (data.1, data.0)
}

var change: ChangeSwitch = changeSwitch

private func printTuple(changeSwitchtuple: ChangeSwitch, data: (Int, Int)) {
    let changeData = changeSwitchtuple(data)
    print("변경전 \(data), 변경후 \(changeData)")
}

printTuple(changeSwitchtuple: changeSwitch, data: (5, 10))
