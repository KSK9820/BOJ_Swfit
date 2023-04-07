//
//  24313.swift
//  시간복잡도
//
//  Created by 김수경 on 2023/04/06.
//

import Foundation

let input = readLine()!.split(separator: " ").map{Int(String($0))!}
let (a1, a0) = (input[0], input[1])
let c = Int(readLine()!)!
let n = Int(readLine()!)!

var result = 1
if c - a1 != 0 {
    if (a0/(c-a1)) <= n {
        result = 1
    }else{
        result = 0
    }
}

if a1 * n + a0 > c * n {
    result = 0
}

print(result)
