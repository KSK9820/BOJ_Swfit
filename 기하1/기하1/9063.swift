//
//  9063.swift
//  기하1
//
//  Created by 김수경 on 2023/04/03.
//

import Foundation

var (minx, miny, maxx, maxy) = (0,0,0,0)

let t = Int(readLine()!)!
for i in 0..<t{
    let input = readLine()!.split(separator: " ").map{Int($0)!}
    if (i == 0) {
        (minx, maxx) = (input[0], input[0])
        (miny, maxy) = (input[1], input[1])
    }
    if minx < input[0] { minx = input[0]}
    if maxx > input[0] { maxx = input[0]}
    if miny < input[1] { miny = input[1]}
    if maxy > input[1] { maxy = input[1]}
}

print((maxx-minx) * (maxy-miny))
