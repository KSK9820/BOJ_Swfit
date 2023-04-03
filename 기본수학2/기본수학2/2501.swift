//
//  2501.swift
//  기본수학2
//
//  Created by 김수경 on 2023/04/03.
//

import Foundation


func solution(_ n:Int) -> [Int] {
    return Array(1...n/2).filter { n % $0 == 0 } + [n]
}

let input = readLine()!.split(separator: " ").map{Int($0)!}
let (n, k) = (input[0], input[1])

var result = solution(n)

if result.count < k {
    print(0)
}else{
    print(result[k-1])
}
