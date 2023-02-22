//
//  9461.swift
//  동적계획법1
//
//  Created by 김수경 on 2023/02/10.
//

import Foundation

let t = Int(readLine()!)!


func dp(n: Int) -> Int{
    var arr = [0,1,1,1,2,2]
    if n <= 5 {return arr[n]}
    else{
        for i in 6...n{
            arr.append(arr[i-1] + arr[i-5])
        }
    }
    return arr[n]
}

for i in 0..<t{
    print(dp(n:Int(readLine()!)!))
}

