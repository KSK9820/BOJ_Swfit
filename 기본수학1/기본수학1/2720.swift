//
//  2720.swift
//  기본수학1
//
//  Created by 김수경 on 2023/04/03.
//

import Foundation

//quarter 0.25 -> 25
//dime 0.1 -> 10
//nickel 0.05 -> 5
//penny 0.01 -> 1

let t = Int(readLine()!)!
var charge = [Int](repeating: 0, count: 4)
for i in 0..<t{
    var c = Int(readLine()!)!
   
    charge[0] = c / 25
    c -= charge[0] * 25
    charge[1] = c / 10
    c -= charge[1] * 10
    charge[2] = c/5
    c -= charge[2] * 5
    if c<=0{
        charge[3] = 0
    }else{
        charge[3] = c
    }
    
    
    for i in charge{
        print(i, separator: " ", terminator: " ")
    }
}


