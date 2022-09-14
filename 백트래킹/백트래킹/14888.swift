//
//  14888.swift
//  백트래킹
//
//  Created by 김수경 on 2022/09/08.
//

import Foundation

let n = Int(readLine()!)!
let num = readLine()!.split(separator:  " ").map{Int(String($0))!}
// +, -, x, /
let op_temp = readLine()!.split(separator:  " ").map{Int(String($0))!}
var op  = [Int]()
var visited = Array(repeating: false, count: n)


var cnt = 0
var max: Int?, min: Int?


for i in 0..<4{
    for j in 0..<op_temp[i]{
        op.append(i)
    }
}

 var results = [Int]()
var arr: [Int] = []
func dfs(x: Int){
    if arr.count == n-1{
        var result: Int = num[0]

        for i in 0..<n-1{
            result = calculate(n: result, m: num[i + 1], op: arr[i])
        }
        results.append(result)

        return
    }
    
   
    for i in 0..<op.count{
        if !visited[i]{
            visited[i] = true
            arr.append(op[i])
            dfs(x: x + 1)
            arr.popLast()
            visited[i] = false
        }
       
    }
}


func calculate(n: Int, m: Int, op: Int) -> Int{
    switch op{
    case 0:
        return n + m
    case 1:
        return n - m
    case 2:
        return n * m
    case 3:
        if n < 0 { return n*(-1) / m * (-1)}
       return n / m
    default:
        return 0
    }
}

dfs(x: 0)

print(results.max()!)
print(results.min()!)
