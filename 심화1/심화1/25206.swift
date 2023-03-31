//
//  25206.swift
//  심화1
//
//  Created by 김수경 on 2023/03/30.
//

import Foundation

var score = ["A+" : 4.5, "A0": 4.0, "B+" : 3.5, "B0":3.0, "C+":2.5, "C0":2.0, "D+":1.5, "D0":1.0, "F":0.0]

var totalScore = 0.0
var totalCredit = 0.0

for i in 0..<20{
    let input = readLine()!.split(separator: " ")
    var s = Double(input[1]), a = input[2]
    
    if a != "P"{
        totalScore += s!
        totalCredit += s! * score[String(a)]!
    }
}

print(totalCredit/totalScore)
