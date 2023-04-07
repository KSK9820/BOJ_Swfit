//
//  24626.swift
//  시간복잡도
//
//  Created by 김수경 on 2023/04/06.
//

import Foundation

let n = Int(readLine()!)!

func MenOfPassion(_ a: [Int], _ n: Int) -> Int {
    //i = ⌊n / 2⌋: 바닥함수: n/2보다 크지 않은 정수 중 최대인 것
    let i = Int(n/2)
    return a[i]
}

print(1)
print(0)
