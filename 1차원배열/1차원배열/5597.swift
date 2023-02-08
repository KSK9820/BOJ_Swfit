//
//  5597.swift
//  1차원배열
//
//  Created by 김수경 on 2023/02/08.
//

import Foundation

var i = 1
var student = Array(0...30)

for i in 1...28{
    let did = Int(readLine()!)!
    student[did] = 0
}

for i in student{
    if i != 0{
        print(student[i])
    }
}
