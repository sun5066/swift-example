//
//  main.swift
//  calc
//
//  Created by 김민석 on 2021/05/21.
//

import Foundation

private func isInt(type: (Any, Any)) -> Bool {
    return Int(type.0 as? String ?? "0") != nil && Int(type.1 as? String ?? "0") != nil
}

private func isFloat(type: (Any, Any)) -> Bool {
    return Float(type.0 as? String ?? "0") != nil && Float(type.1 as? String ?? "0") != nil
}

func printIntComputation(num1: Int, num2: Int) {
    print("합", "\(num1) + \(num2) = \(num1 + num2)")
    print("빼기", "\(num1) - \(num2) = \(num1 - num2)")
    if num1 < 100 || num2 < 100 {
        print("나누기", "\(num2) / \(num1) = \(num2 / num1)")
        print("곱하기", "\(num1) * \(num2) = \(num1 * num2)")
    }
}

func printFloatComputation(num1: Float, num2: Float) {
    print("합", "\(num1) + \(num2) = \(num1 + num2)")
    print("빼기", "\(num1) - \(num2) = \(num1 - num2)")
    if num1 < 100 || num2 < 100 {
        print("나누기", "\(num2) / \(num1) = \(num2 / num1)")
        print("곱하기", "\(num1) * \(num2) = \(num1 * num2)")
    }
}

extension String {
    func toInt() -> Int {
        return (self as NSString).integerValue
    }
    
    func toFloat() -> Float {
        return (self as NSString).floatValue
    }
}

print("입력!!")
let input1 = readLine()!

print("입력!!")
let input2 = readLine()!

if isInt(type: (input1, input2)) {
    let num1: Int = input1.toInt()
    let num2: Int = input2.toInt()
    
    printIntComputation(num1: num1, num2: num2)
} else if isFloat(type: (input1, input2)) {
    let num1: Float = input1.toFloat()
    let num2: Float = input2.toFloat()
    
    printFloatComputation(num1: num1, num2: num2)
} else {
    print("\(input1)\(input2)")
}
