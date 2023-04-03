//
//  19532.swift
//  브루트포스
//
//  Created by 김수경 on 2023/04/03.
//

import Foundation

let input = readLine()!.split(separator: " ").map{Int($0)!}
let (a, b, c, d, e, f) = (input[0], input[1], input[2], input[3], input[4], input[5])

if !input.contains(0){
    let y = (c*d - a*f) / (b*d - a*e)
    let x = (c - b*y) / a
    print("\(x) \(y)")
}
else{
        solution()
}

func solution() -> Int{
    for x in -999...999{
        for y in -999...999{
            if a*x + b*y == c && d*x + e*y == f{
                print("\(x) \(y)")
                return 0
            }
        }
    }
    return 0
}



