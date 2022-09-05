//
//  3036.swift
//  정수론및조합론
//
//  Created by 김수경 on 2022/08/02.
//

import Foundation

let N = Int(readLine()!)!
var r = readLine()!.split(separator: " ").map {Int($0)!}
func gcf(a: Int, b: Int) -> Int{
    if b == 0 {
        return a
    }
    return gcf(a: b, b: a %  b)
}

for i in 1..<N{
    var div = gcf(a: r[0] * 2, b: r[i] * 2)
    var top = r[0] * 2 / div
    var bottom = r[i] * 2 / div
    print("\(top)/\(bottom)")
}
