//
//  25414.swift
//  for문
//
//  Created by 김수경 on 2023/02/22.
//

import Foundation

let n = Int(readLine()!)!
var result = ""
for i in 0..<(n/4) {
    result += "long "
}

print(result + "int")
