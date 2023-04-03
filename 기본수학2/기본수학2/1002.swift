//
//  1002.swift
//  기본수학2
//
//  Created by 김수경 on 2022/04/25.
//

import Foundation

var time = Int(readLine()!)!

for i in 0..<time{
    var input = readLine()!.split(separator: " ").map({(value) in Double(String(value))!})
    var x1 = input[0]
    var y1 = input[1]
    var r1 = input[2]
    var x2 = input[3]
    var y2 = input[4]
    var r2 = input[5]
    
    var d = sqrt(pow((x1 - x2), 2) + pow((y1 - y2), 2))
    
    if x1 == x2 && y1 == y2 && r1 == r2 {
        print("-1")
    }else if d > r1 + r2{
        print("0")
    }else if (r1 > r2 && d + r2 < r1) || (r2 > r1 && d + r1 < r2){
        print("0")
    }
    else if d == r1 + r2 || (d + r1 == r2) || (d + r2 == r1){
        print("1")
    }else{
        print("2")
    }
}
