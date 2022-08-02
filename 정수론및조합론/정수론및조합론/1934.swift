//
//  1934.swift
//  정수론및조합론
//
//  Created by 김수경 on 2022/07/27.
//

import Foundation

let T = Int(readLine()!)!


func gcf(a: Int, b: Int) -> Int{
    if b == 0 {
        return a
    }
    return gcf(a: b, b: a % b)
}

for i in 0..<T{
    let num = readLine()!.split(separator: " ").map{Int($0)!}
    let div = gcf(a: num[0], b: num[1])
    print(num[0] * num[1] / div)
}
