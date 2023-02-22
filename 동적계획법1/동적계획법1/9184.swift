//
//  9184.swift
//  동적계획법1
//
//  Created by 김수경 on 2023/02/14.
//

import Foundation


var dp = Array(repeating: Array(repeating: Array(repeating: 0, count: 21), count: 21), count: 21)

while (1 != 0){
    let input = readLine()!.split(separator: " ").map{Int(String($0))!}
    if input == [-1, -1, -1] {break}
    print("w(\(input[0]), \(input[1]), \(input[2])) = \(w(input[0], input[1], input[2]))")
    
}

func w(_ a: Int, _ b: Int, _ c: Int) -> Int{
    if a<=0 || b<=0 || c<=0{
        return 1
    }
    else if a>20 || b>20 || c>20 {
        dp[20][20][20] = w(20, 20, 20)
        return dp[20][20][20]
    }
    else if dp[a][b][c]  != 0 {return dp[a][b][c]}
    else if a<b && b<c {
        dp[a][b][c] = w(a, b, c-1) + w(a, b-1, c-1) - w(a, b-1, c)
        return dp[a][b][c]
    }
    else {
        dp[a][b][c] = w(a-1, b, c) + w(a-1, b-1, c) + w(a-1, b, c-1) - w(a-1, b-1, c-1)
    }
    return dp[a][b][c]
}
