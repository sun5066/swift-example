//
//  main.swift
//  variable
//
//  Created by 김민석 on 2021/05/24.
//

import Foundation

extension String {
    func isInt() -> Bool {
        return Int(self) != nil
    }
    
    func toInt() -> Int {
        return (self as NSString).integerValue
    }
}

private func printNames(names: String...) {
    let last = names.last ?? "0"
    let count: Int
    
    count = last.toInt()
    if count >= names.count {
        print("잘못된 전달값 입니다.")
    } else  {
        (0...count).forEach { i in
            print(names[i])
        }
    }
}

printNames(names: "c언어", "java", "kotlin", "swift" , "c++" , "c#" , "visual basic" , "lua" , "7")
