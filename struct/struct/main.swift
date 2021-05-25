//
//  main.swift
//  struct
//
//  Created by 김민석 on 2021/05/25.
//

import Foundation

struct Score {
    var name: String
    var sex: Character
    var scores = [Int](repeating: 0, count: 5) // (kor: Int, eng: Int, math: Int, music: Int, science: Int)
}

var score = Score(name: "noname", sex: "m", scores: [40, 30, 50, 20, 10, 60, 30])
print((score.name, score.sex, score.scores))
