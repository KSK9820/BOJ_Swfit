//
//  1912.swift
//  동적계획법1
//
//  Created by 김수경 on 2023/02/15.
//

import Foundation

let n = Int(readLine()!)!
let arr = readLine()!.split(separator: " ").map{Int(String($0))!}

var max_value = arr[0]
var dp = [Int](repeating: -1000, count: n)
dp[0] = max_value

for i in 1..<n{
    dp[i] = max(dp[i-1] + arr[i], arr[i])
    max_value = max(dp[i], max_value)
}

print(max_value)
