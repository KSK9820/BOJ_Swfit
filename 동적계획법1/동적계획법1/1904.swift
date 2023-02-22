//
//  1904.swift
//  동적계획법1
//
//  Created by 김수경 on 2023/02/13.
//

import Foundation

let n = Int(readLine()!)!
var arr=[1,1]

func dp(n: Int) -> Int{
    if n == 1 { return 1}
    else {
        for i in 2...n {
            arr.append((arr[i-1] + arr[i-2]) % 15746)
        }
    }
    return arr[n]
}

print(dp(n: n))
