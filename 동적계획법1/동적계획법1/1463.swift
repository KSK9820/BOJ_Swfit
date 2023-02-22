//
//  1463.swift
//  동적계획법1
//
//  Created by 김수경 on 2023/02/15.
//

import Foundation

var n = Int(readLine()!)!

var dp = Array(repeating: 0, count: n+1)
dp[0] = 0; dp[1] = 0;
if n >= 2{
    for i in 2...n{
        dp[i] = dp[i-1] + 1
        if i % 3 == 0 {
            dp[i] = min(dp[i], dp[i/3]+1)
        }
        if i % 2 == 0 {
            dp[i] = min(dp[i], dp[i/2]+1)
        }
    }
}

print(dp[n])
