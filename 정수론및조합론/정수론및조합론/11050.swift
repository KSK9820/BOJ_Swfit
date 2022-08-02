//
//  11050.swift
//  정수론및조합론
//
//  Created by 김수경 on 2022/08/02.
//

import Foundation

let input = readLine()!.split(separator: " ").map{Int($0)!}
let N = input[0]
let K = input[1]

func factorial(n: Int) -> Int{
    if n == 0{
        return 1
    }
    return n * factorial(n: n-1)
}
let top = factorial(n: N)
let bottom = factorial(n: K) * factorial(n: N - K)
print(top/bottom)
