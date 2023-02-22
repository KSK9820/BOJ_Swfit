//
//  10810.swift
//  1차원배열
//
//  Created by 김수경 on 2023/02/22.
//

import Foundation

let input = readLine()!.split(separator: " ").map{ Int(String($0))! }
var n = [Int](repeating: 0, count: input[0])
let m = input[1]

for i in 0..<m{
    let line = readLine()!.split(separator: " ").map{ Int(String($0))! }
    for j in (line[0]-1)..<line[1] {
        n[j] = line[2]
    }
}

//for i in n{
//    print(i, separator: ",", terminator: " ")
//}

n.forEach{
    print($0, terminator: " ")
}
