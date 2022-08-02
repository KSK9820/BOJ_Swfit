//
//  1037.swift
//  정수론및조합론
//
//  Created by 김수경 on 2022/07/27.
//

import Foundation

let input = Int(readLine()!)!
var num = readLine()!.split(separator: " ").map{Int($0)!}

var max = num.max()!
var min = num.min()!

print(max * min)
