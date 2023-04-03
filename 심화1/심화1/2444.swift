//
//  2444.swift
//  심화1
//
//  Created by 김수경 on 2023/02/22.
//

import Foundation

let n = Int(readLine()!)!


if n == 1{
    print("*")
}else{
    
    
    
    //1에서 n까지
    for i in 1...n{
        var line = ""
        //공백: n-i
        for _ in 0..<(n-i){
            line.append(" ")
        }
        //별: 2n-1
        for _ in 1...(2 * i - 1){
            line.append("*")
        }
        print(line)
    }
    
    //n-1에서 1까지
    for i in (1...n-1).reversed(){
        var line = ""
        //공백: n-i
        for _ in 0..<(n-i){
            line.append(" ")
        }
        //별: 2n-1
        for _ in 1...(2 * i - 1){
            line.append("*")
        }
        print(line)
    }
}
