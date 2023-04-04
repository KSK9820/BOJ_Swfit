//
//  2485.swift
//  약수,배수와소수2
//
//  Created by 김수경 on 2023/04/04.
//

import Foundation

let n = Int(readLine()!)!
var tree = [Int](repeating: 0, count: n)

for i in 0..<n{
    tree[i] = Int(readLine()!)!
}
var distance = [Int]()
for i in 0..<n-1{
    distance.append(tree[i+1] - tree[i])
}

func gcd(_ a : Int, _ b : Int) -> Int{
    return b == 0 ? a: gcd(b, a % b)
}

distance = Array(Set(distance)).sorted(by: <)

var interval = distance[0]
for i in 1..<distance.count{
    interval = gcd(distance[i], interval)
}

var long = tree[n-1] - tree[0]
print(long / interval - n + 1)



//
//var dis = tree[n-1]
//for i in 0..<n-1{
//    if tree[i+1] - tree[i] < dis {
//        dis = tree[i+1] - tree[i]
//    }
//}
//
//var div = solution(dis)
//func solution(_ n: Int) -> [Int]{
//    return Array(1...n/2).filter{ n % $0 == 0 } + [n]
//}
//
//var newTree = 0, flag = true
//
//for k in div.reversed(){
//    var here = tree[0] + k, i = 0
//    newTree = 0
//
//    while here < tree[n-1] && flag == true{
//        if here > tree[i + 1]{
//            break
//        }
//        else if here == tree[i+1]{
//            i += 1
//            here += k
//        }
//        else if here < tree[i+1] && here != tree[i]{
//            newTree += 1
//            here += k
//        }
//        if here == tree[n-1]{
//            flag = false
//            print(newTree)
//            break
//        }
//    }
//}
