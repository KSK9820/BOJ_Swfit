//
//  1010.swift
//  정수론및조합론
//
//  Created by 김수경 on 2022/08/03.
//

import Foundation

let T = Int(readLine()!)!

for _ in 0..<T{
    let input = readLine()!.split(separator: " ").map{Int($0)!}
    let N = input[0], M = input[1];
    
    var c: [[Int]] = Array(repeating: Array(repeating: 0, count: M+1), count: M+1)
    
    for i in 0...M{
        for j in 0...i{
            if i == 0 || j == 0 || i == j {
                c[i][j] = 1
            }
            else{
                c[i][j] = c[i-1][j-1] + c[i-1][j]
            }
        }
    }
    print(c[M][N])
}

