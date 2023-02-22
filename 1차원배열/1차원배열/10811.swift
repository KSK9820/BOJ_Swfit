//
//  10811.swift
//  1차원배열
//
//  Created by 김수경 on 2023/02/22.
//

import Foundation

let input = readLine()!.split(separator: " ").map{ Int(String($0))! }
var n = [Int](0...input[0])
let m = input[1]

for i in 0..<m{
    let line = readLine()!.split(separator: " ").map{ Int(String($0))! }
    n[line[0]...line[1]].reverse()
}

n[1...].forEach{
    print($0, terminator: " ")
}
