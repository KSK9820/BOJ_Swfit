//
//  2745.swift
//  기본수학1
//
//  Created by 김수경 on 2023/03/31.
//

import Foundation

let input = readLine()!.split(separator: " ")
let n = Array(input[0]), b = Double(input[1])

var arr = [String: Int]()
var key = 10
for i in 65...90{
    arr[String(UnicodeScalar(i)!)] = key
    key += 1
}


var square = 0.0
var result = 0

for i in n.reversed(){
    if arr[String(i)] == nil {
        result += Int(String(i))! * Int(pow(b!, square))
    }else{
        result += arr[String(i)]!  * Int(pow(b!, square))
    }
    square += 1
}

print(result)


//print( Int(input[0], radix: Int(input[1])!)!)
