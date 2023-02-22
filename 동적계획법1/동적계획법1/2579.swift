//
//  2579.swift
//  동적계획법1
//
//  Created by 김수경 on 2023/02/13.
//

import Foundation

let step = Int(readLine()!)!
var steps = [Int]()
for _ in 0..<step{
    steps.append(Int(readLine()!)!)
}


func dp() -> Int{
    var result = [Int](repeating: 0, count: 301)
    result[1] = steps[0]
    if step == 1 { return steps[0]}
    result[2] = steps[0] + steps[1]
    if step > 2{
        for i in 3...step{
            result[i] = max(result[i-3] + steps[i-2] + steps[i-1], result[i-2] + steps[i-1])
        }
    }
    return result[step]
}
print(dp())


