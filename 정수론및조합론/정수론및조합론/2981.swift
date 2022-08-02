//
//  2981.swift
//  정수론및조합론
//
//  Created by 김수경 on 2022/07/27.
//

import Foundation

//최대공약수의 약수를 찾는 문제

//최대공약수 찾기
func gcf(a: Int, b: Int) -> Int{
    var smaller = min(a, b)
    var bigger = max(a, b)
    if smaller == 0 {
        return bigger
    }
    return gcf(a: smaller, b: bigger % smaller)
}


func divide(n: Int) -> [Int]{
    var answer: [Int] = []
    for i in 2..<Int(sqrt(Double(n)) + 1) {
        if n % i == 0 {
            answer.append(i)
            answer.append(n / i)
        }
    }
    answer.append(n)
    return answer
}



let T = Int(readLine()!)!
var input = [Int]()
//var gap = [Int]()
for _ in 0..<T{
    let temp = Int(readLine()!)!
    input.append(temp)
}

input.sort()
var gap = input[1] - input[0]
for i in 2..<T{
    gap = gcf(a: gap, b: input[i] - input[i - 1])
}

var answer = Array(Set(divide(n: gap))).sorted(by: <)
for answer in answer{
    print(answer, terminator: " ")
}


