//
//  10101.swift
//  기하1
//
//  Created by 김수경 on 2023/04/03.
//

import Foundation

var input = [Int]()
for _ in 0..<3{
    input.append(Int(readLine()!)!)
}

if (input[0] == 60 && input[1] == 60 && input[2] == 60){
    print("Equilateral")
}
else if (input.reduce(0, +) != 180){
    print("Error")
}
else if (input[0] == input[1] || input[0] == input[2] || input[1] == input[2]){
    print("Isosceles")
}else{
    print("Scalene")
}
