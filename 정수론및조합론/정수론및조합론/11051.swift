//
//  11051.swift
//  정수론및조합론
//
//  Created by 김수경 on 2022/08/02.
//

import Foundation

let input = readLine()!.split(separator: " ").map{Int($0)!}
let N = input[0]
let K = input[1]
var c: [[Int]] = Array(repeating: Array(repeating: 0, count: N+1), count: N+1)

//c(n, k) = c(n-1, k-1) + c(n-1, k)

for n in 0...N{
    for k in 0...n{
        if n == 0 || k == 0 || k == n {
            c[n][k] = 1
        }else{
            c[n][k] = (c[n - 1][k - 1] % 10007 + c[n - 1][k] % 10007) % 10007
        }
    }
}

print(c[N][K])
