//
//  7785.swift
//  집합과맵
//
//  Created by 김수경 on 2023/04/03.
//

import Foundation

let n = Int(readLine()!)!

var check: Dictionary<String, String> = [:]
for _ in 0..<n{
    let input = readLine()!.split(separator:" ")
    check[String(input[0])] = String(input[1])
}


var sorted = check.filter{$0.value == "enter"}.sorted{$0.key > $1.key}
for i in sorted{
    print(i.key)
}
