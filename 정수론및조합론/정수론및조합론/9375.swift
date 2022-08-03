//
//  9375.swift
//  정수론및조합론
//
//  Created by 김수경 on 2022/08/03.
//

import Foundation
let T = Int(readLine()!)!
for _ in 0..<T{
    let t = Int(readLine()!)!
    var item = [String: Int]()
    for _ in 0..<t{
        let input = readLine()!.split(separator: " ")
        item[String(input[1]), default: 1] += 1
    }
    var result = 1
    for i in item{
        result *= i.value
    }
    print(result - 1)
}
