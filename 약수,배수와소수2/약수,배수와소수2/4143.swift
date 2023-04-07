//
//  4134.swift
//  약수,배수와소수2
//
//  Created by 김수경 on 2023/04/04.
//

import Foundation

let t = Int(readLine()!)!
for _ in 1...t{
    var n = Int(readLine()!)!
    while true{
        if isPrime(n) == true {
            print(n)
            break
        }
        n += 1
    }
}

func isPrime(_ n: Int) -> Bool{
    if n <= 1 { return false}
    if n <= 3 { return true}
    for i in 2...Int(sqrt(Double(n))){
        if n % i == 0 { return false}
    }
    return true
}
