//
//  main.swift
//  dictionary
//
//  Created by 김민석 on 2021/05/20.
//

import Foundation

let englishQuetionMap: [String: [String]] = [
    "개미":["ant", "ent", "end"],
    "동물":["animal", "enimal", "aminal"],
    "벌레":["bug", "beg", "big"],
    "학교":["school", "scool", "schol"],
    "컴퓨터":["computer", "combuter", "computar"]
]

let englishMap: [String: String] = [
    "개미":"ant",
    "동물":"animal",
    "벌레":"bug",
    "학교":"school",
    "컴퓨터":"computer"
]

let rndIndex: Int = Int(arc4random_uniform(5))
let rndWord = Array(englishMap.keys)[rndIndex]
let quetion = englishQuetionMap[rndWord]!.shuffled()
print("\(rndWord) 단어를 맞추시오")
print("1.\(quetion[0]) 2.\(quetion[1]) 3.\(quetion[2])")

let inputIndex = Int(readLine()!) ?? 1
let awner = quetion[inputIndex - 1]
print("당신의 답 : \(awner)")
if englishMap[rndWord]! == awner {
    print("정답!")
} else {
    print("오답! 답: \(englishMap[rndWord]!)")
}
