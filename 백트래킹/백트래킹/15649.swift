//
//  15649.swift
//  백트래킹
//
//  Created by 김수경 on 2022/08/05.
//

import Foundation

let input = readLine()!.split(separator: " ").map{Int($0)!}
let N = input[0], M = input[1]


var arr:[Int]=[]

recur()

func recur(){
    if arr.count == M{
        print(arr.map{String($0)}.joined(separator: " "))
        return
    }
    
    for i in 1...N{
        //print(arr)
        if !arr.contains(i){
            arr.append(i)
            recur()
            arr.removeLast()
        }
    }
    
}

