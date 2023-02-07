//
//  25304.swift
//  for문
//
//  Created by 김수경 on 2023/02/07.
//

import Foundation

let total = Int(readLine()!)!
let num = Int(readLine()!)!
//var item : [(price: Int, num: Int)] = Array(repeating: (0,0), count: num)
var total2: Int = 0

for _ in 0..<num{
    let temp = readLine()!.split(separator: " ").map{Int($0)!}
    total2 += temp[0] *  temp[1]
}

if total == total2{
    print("Yes")
}else{
    print("No")
}


