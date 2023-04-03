//
//  3009.swift
//  기본수학2
//
//  Created by 김수경 on 2022/04/25.
//

import Foundation

var input1 = readLine()!.split(separator: " ")
var input2 = readLine()!.split(separator: " ")
var input3 = readLine()!.split(separator: " ")

var result: String = ""

if input1[0] == input2[0]{
    result.write("\(input3[0]) ")
}else if input1[0] == input3[0]{
    result.write("\(input2[0]) ")
}else{
    result.write("\(input1[0]) ")
}

if input1[1] == input2[1]{
    result.write("\(input3[1])")
}else if input1[1] == input3[1]{
    result.write("\(input2[1])")
}else{
    result.write("\(input1[1])")
}

print(result)

