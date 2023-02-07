//
//  main.swift
//  3003
//
//  Created by 김수경 on 2023/02/07.
//

import Foundation


//킹 1 퀸 1 룩 2 비숍 2 나이트 2 폰 8

let chess = readLine()!.split(separator: " ").map{ Int($0)! }
var supplement: [Int] = Array(repeating: 0, count: 6)
let full = [1,1,2,2,2,8]

for i in 0...5{
    supplement[i] = full[i] - chess[i]
}

for i in supplement{
    print(i, separator: " ", terminator: " ")
}


