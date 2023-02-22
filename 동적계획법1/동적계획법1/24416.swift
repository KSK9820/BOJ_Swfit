//
//  24416.swift
//  동적계획법1
//
//  Created by 김수경 on 2023/02/10.
//

import Foundation

let n = Int(readLine()!)!
var cnt2 = 0
var cnt1 = 0
func code1(n: Int) -> Int{
    if (n==1 || n == 2) {return 1}
    else {
        return code1(n: n-1) + code1(n: n-2)
    }
}


func code2(n: Int) -> Int{
    var f: [Int] = [0, 1, 1]
    for i in 3...n{
        cnt2 += 1
        f.append(f[i-1] + f[i-2])
    }
    return f[n]
}

code2(n: n)
print("\(code1(n: n)) \(cnt2)")

