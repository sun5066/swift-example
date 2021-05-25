//
//  main.swift
//  double-function-calc
//
//  Created by 김민석 on 2021/05/25.
//

import Foundation

private func calculator(tuple data: (Int, Int) = (0, 0)) {
    func sum(_ param1: Int, _ param2: Int) -> Int{
        return (param1 + param2)
    }
    
    func minus(_ param1: Int, _ param2: Int) -> Int {
        return (param1 - param2)
    }
    
    func div(_ param1: Int, _ param2: Int) -> Int {
        return (param2 / param1)
    }
    
    func multipl(_ param1: Int, _ param2: Int) -> Int {
        return (param1 * param2)
    }
    
    print("더하기 \(data) = \(sum(data.0, data.1))")
    print("빼기 \(data) = \(minus(data.0, data.1))")
    print("나누기 \(data) = \(div(data.0, data.1))")
    print("곱하기 \(data) = \(multipl(data.0, data.1))")
}

calculator(tuple: (5, 30))
