//
//  main.swift
//  bmi
//
//  Created by 김민석 on 2021/05/25.
//

import Foundation

struct PersonInfo {
    var name: String
    var weight: Float
    var height: Float
    var bmi: Float
}

class Bmi {
    var name: String
    var weight: Float
    var height: Float
    
    private var personInfo: PersonInfo? = nil
    
    init(_ name: String, _ weight: Float, _ height: Float) {
        self.name = name
        self.weight = weight
        self.height = height
    }
    
    func calcPersonInfo() {
        let height = floor(round(self.height) / 10) / 10
        let bmi = self.weight / self.height
        self.personInfo = PersonInfo(name: name, weight: weight, height: height, bmi: bmi)
    }
    
    func printPersonInfo() {
        if let personInfo = self.personInfo {
            print("\(personInfo)")
        } else {
            crashBmi(msg: "personInfo is nil!")
        }
    }
    
    private func crashBmi(msg: String) -> Never {
        fatalError(msg)
    }
}

let bmi = Bmi("sun", 61.3, 176.5)
bmi.calcPersonInfo()
bmi.printPersonInfo()
