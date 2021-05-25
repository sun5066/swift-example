//
//  main.swift
//  no-return-function
//
//  Created by 김민석 on 2021/05/25.
//

import Foundation

func crashAndBurn() -> Never {
    fatalError("Something very, very bad happened")
}

func someFunction(isAllIsWell: Bool) {
    guard isAllIsWell else {
        print("마을에 도둑이 들었습니다!")
        crashAndBurn()
    }
    print("All is well")
}

//someFunction(isAllIsWell: true)


func say(_ something: String) -> String {
    print(something)
    return something
}

//say("asdasd")

// example: @discardableResult fuc 함수명
// @discardableResult 어노테이션이 붙은 함수는 반환이 굳이 필요없는곳에 달아줄수있다.
private func calculator(tuple data: (Int, Int) = (0, 0)) {
    func crashAndBurn(_ message: String) -> Never {
        fatalError(message)
    }
    
    func sum(_ param1: Int, _ param2: Int) -> Int{
        return (param1 + param2)
    }
    
    func minus(_ param1: Int, _ param2: Int) -> Int {
        return (param1 - param2)
    }
    
    @discardableResult func div(_ param1: Int, _ param2: Int) -> Int {
        let calc = (param2 / param1)
        guard calc != 0 else {
            crashAndBurn("나누기 결과가 0입니다!")
        }
        return calc
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
