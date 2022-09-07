//
//  9663.swift
//  백트래킹
//
//  Created by 김수경 on 2022/09/07.
//

import Foundation


//시간초과
//
//let N = Int(readLine()!)!
//
//var board = [Int](repeating: 0, count: N)
//var count = 0
//
//
//for i in 0..<N{
//    board[0] = i
//    chess(x: 1)
//}
//print(count)
//
//
//func append_chess(idx: Int) -> Bool{
//    for i in 0..<idx{
//        if board[i] == board[idx] || abs(board[i] - board[idx]) ==  abs(i - idx ){
//            return false
//        }
//    }
//    return true
//}
//
//
//func chess(x: Int){
//    if x == N{
//        count += 1
//        return
//    }
//
//    for i in 0..<N{
//        board[x] = i
//        if append_chess(idx: x){
//            chess(x: x + 1)
//        }
//    }
//}
//



let N = Int(readLine()!)!

var board = [Int](repeating: -1, count: N)
var visited = [Bool](repeating: false, count: N)
var result = 0


func DFS(x: Int){
    if x == N {
        result += 1
        return
    }
    
    for i in 0..<N{
        if visited[i] {
            continue
        }
        
        board[x] = i
        if !append_chess(x: x){
            visited[i] = true
            DFS(x: x + 1)
            visited[i] = false
        }
    }
}
    

func append_chess(x: Int) -> Bool{
    for i in 0..<x{
        if board[i] == board[x] || abs(board[i] - board[x]) ==  abs(i - x){
            return true
        }
    }
    return false
}

DFS(x: 0)
print(result)
