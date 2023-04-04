//
//  17103.swift
//  약수,배수와소수2
//
//  Created by 김수경 on 2023/04/04.
//

import Foundation


let t = Int(readLine()!)!
var arr = [Int]()
for _ in 1...t{
    arr.append(Int(readLine()!)!)
}

let primeList = getPrimeList(arr.max()!)

for i in arr{
    var count = 0
    for j in 2...i/2{
        if primeList[j] && primeList[i-j] { count += 1 }
    }
    print(count)
}

func getPrimeList(_ n: Int) -> [Bool]{
    guard n > 1 else { return [] }
    var isPrime = [false, false] + Array(repeating: true, count: n-1)
    var primes = [Int]()
    
    for i in 2...n{
        if isPrime[i]{
            primes.append(i)
            for j in stride(from: i * 2, through: n, by: i){
                isPrime[j] = false
            }
        }
    }
    return isPrime
}

