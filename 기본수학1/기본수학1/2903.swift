//
//  2903.swift
//  기본수학1
//
//  Created by 김수경 on 2023/04/03.
//

import Foundation

let n = Int(readLine()!)!
var p = 2
for i in 1...n{
    p += Int(pow(2.0, Double(i-1)))
}

print(p*p)
