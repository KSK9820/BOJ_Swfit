//
//  2004.swift
//  정수론및조합론
//
//  Created by 김수경 on 2022/08/04.
//

import Foundation

let input = readLine()!.split(separator: " ").map{Int($0)!}
var n = input[0], m = input[1]


func two_count(N: Int) -> Int{
    var two = 0
    var n = N
    while n >= 2{
        two += n / 2
        n /= 2
    }
    return two
}

func five_count(N: Int) -> Int{
    var five = 0
    var n = N
    while n >= 5{
        five += n / 5
        n /= 5
    }
    return five
}

print(min(two_count(N: n) - two_count(N: m) - two_count(N: n - m), five_count(N: n) - five_count(N: m) - five_count(N: n - m)
         ))
