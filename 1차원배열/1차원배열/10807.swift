//
//  10807.swift
//  1차원배열
//
//  Created by 김수경 on 2023/02/07.
//

import Foundation

let n = Int(readLine()!)!
var num = readLine()!.split(separator: " ").map{ Int($0)! }

let find = Int(readLine()!)
var count = 0

for i in num{
    if i == find{
        count += 1
    }
}

print(count)

