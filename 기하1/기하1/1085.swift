//
//  1085.swift
//  기본수학2
//
//  Created by 김수경 on 2022/04/15.
//

import Foundation

var input = readLine()!.split(separator: " ").map{(value) in Int(String(value))!}
let x = input[0]
let y = input[1]
let w = input[2]
let h = input[3]


var hor_w = abs(x - w)
var hor_0 = abs(0 - x)
var ver_h = abs(y - h)
var ver_0 = abs(0 - y)

print(min(min(hor_w, hor_0), min(ver_h, ver_0)))

