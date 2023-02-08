//
//  2587.swift
//  정렬
//
//  Created by 김수경 on 2023/02/08.
//

import Foundation


//퀵정렬
//func quickSort(a: [Int]) -> [Int] {
//    var arr = a
//    guard arr.count > 1 else {return arr}
//
//    let pivot = arr[arr.count / 2]
//    let left = arr.filter {$0 < pivot}
//    let right = arr.filter {$0 > pivot}
//    let equal = arr.filter {$0 == pivot}
//
//    return quickSort(a: left) + equal + quickSort(a: right)
//}
//
//var input = Array(repeating: 0, count: 5)
//var avg = 0
//for i in 0..<5{
//    input[i] = Int(readLine()!)!
//    avg += input[i]
//}
//
//print(avg / 5)
//input = quickSort(a: input)
//print(input[2])
//


//고급함수
var arr: [Int] = []
for _ in 1...5{
    let line = Int(readLine()!)!
    arr.append(line)
}
print(arr.reduce(0, +) / 5)
print(arr.sorted(by: <)[2])
