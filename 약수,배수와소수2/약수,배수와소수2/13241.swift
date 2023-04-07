//
//  13241.swift
//  약수,배수와소수2
//
//  Created by 김수경 on 2023/04/03.
//

import Foundation

//union에서 max

let input = readLine()!.split(separator: " ").map{Int(String($0))!}

func solution(_ n: Int) -> [Int]{
    if n == 1 { return [1] }
    else{
        return Array(1...n/2).filter{n % $0 == 0} + [n]
    }
}

let a = Set(solution(input[0]))
let b = Set(solution(input[1]))
let intersect = a.intersection(b)
if input[0] > input[1] {
    if a.contains(input[1]){
        print(input[0])
    }else {
        print((input[0]*input[1]) / intersect.max()! ?? 1)
    }
}else{
    if b.contains(input[0]){
        print(input[1])
    }else{
        print(input[0]*input[1]/intersect.max()! ?? 1)
    }
}
