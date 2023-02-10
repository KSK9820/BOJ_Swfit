//
//  2738.swift
//  2차원배열
//
//  Created by 김수경 on 2023/02/10.
//

import Foundation

let input = readLine()!.split(separator: " ").map{Int(String($0))!}
let (n, m) = (input[0], input[1])
var N = [[Int]]()
var M = [[Int]]()
var result = ""

for _ in 0..<n{
    let line = readLine()!.split(separator: " ").map{Int(String($0))!}
    N.append(line)
}
for _ in 0..<n{
    let line = readLine()!.split(separator: " ").map{Int(String($0))!}
    M.append(line)
}

for i in 0..<n{
    for j in 0..<m{
        result += "\(N[i][j] + M[i][j]) "
    }
    result += "\n"
}
print(result)
