//
//  2563.swift
//  2차원배열
//
//  Created by 김수경 on 2023/02/10.
//

import Foundation

let n = Int(readLine()!)!
var white = [[Int]](repeating: Array(repeating: 0, count: 100 ), count: 100)
var area = 0
for _ in 0..<n{
    let line = readLine()!.split(separator: " ").map{Int(String($0))!}
    for j in 0..<10{
        for k in 0..<10{
            if white[line[0]+j][line[1]+k] == 0{
                white[line[0]+j][line[1]+k] = 1
                area += 1
            }
        }
    }
}

print(area)



