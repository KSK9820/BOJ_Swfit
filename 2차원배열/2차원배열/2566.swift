//
//  2566.swift
//  2차원배열
//
//  Created by 김수경 on 2023/02/10.
//

import Foundation

var matrix = [[Int]]()

for i in 0..<9{
    let line = readLine()!.split(separator: " ").map{Int(String($0))!}
    matrix.append(line)
}

var max = matrix[0][0]
var max1 = (0, 0)
for i in 0..<9{
    for j in 0..<9{
        if matrix[i][j] >= max{
            max = matrix[i][j]
            max1 = (i+1, j+1)
        }
    }
}
print(max)
print("\(max1.0) \(max1.1)")


