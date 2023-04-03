//
//  5073.swift
//  기하1
//
//  Created by 김수경 on 2023/04/03.
//

import Foundation

while let input = readLine()?.split(separator: " ").map{Int($0)!}, input != [0,0,0]{
    let m = input.max()
    if input.reduce(0, +) - m! <= m! {
        print("Invalid")
        continue
    }
        
    if input[0] == input[1] && input[1] == input[2] {
        print("Equilateral")
    }else if input[0] == input[1] || input[1]==input[2] || input[2] == input[0]{
        print("Isosceles")
    }else{
        print("Scalene")
    }
}


