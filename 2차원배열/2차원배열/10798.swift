//
//  10798.swift
//  2차원배열
//
//  Created by 김수경 on 2023/02/22.
//

import Foundation

var arr = Array(repeating: Array(repeating: "", count: 15), count: 5)

for i in 0..<5{
    let input = Array(readLine()!.map{String($0)})
    for j in 0..<input.count{
        arr[i][j] = input[j]
    }
}

var result = ""
for j in 0..<15{
    for i in 0..<5{
        if arr[i][j] != ""{
            result += arr[i][j]
        }
    }
}

print(result)

