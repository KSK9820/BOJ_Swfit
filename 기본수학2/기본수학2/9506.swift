//
//  9506.swift
//  기본수학2
//
//  Created by 김수경 on 2023/04/03.
//

import Foundation

func solution(_ n: Int) -> [Int] {
    return Array(1...n/2).filter { n % $0 == 0}
}

while true{
    let input = Int(readLine()!)!
    if input == -1 {
        break
    }
    
    let result = solution(input)
    
    if result.reduce(0, +) == input{
        var string = "\(input) = \(result[0])"
        for i in 1..<result.count{
            string += " + \(result[i])"
        }
        print(string)
    }else{
        print("\(input) is NOT perfect.")
    }
    
}
