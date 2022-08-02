//
//  2609.swift
//  정수론및조합론
//
//  Created by 김수경 on 2022/07/27.
//

import Foundation


//최대공약수 - 유클리드 호제법
func gcf(a: Int, b: Int) -> Int {
    if b == 0 {
        return a
    }
    return gcf(a: b, b: a % b)
}

let num = readLine()!.split(separator: " ").map { Int($0)!}
let div = gcf(a: num[0], b: num[1])

//최대공배수 = num1 * num2/최대공약수
let mul = num[0] * num[1] / div
print(div)
print(mul)
