//
//  14889.swift
//  백트래킹
//
//  Created by 김수경 on 2022/09/14.
//

import Foundation

let n = Int(readLine()!)!
var ability = Array(repeating: Array(repeating: 0, count: n), count: n)
var link = Set<Int>()
for i in 0..<n{
    let input = readLine()!.split(separator: " ").map{Int(String($0))!}
    ability[i] = input
    
    link.insert(i)
}


var min = [Int]()
var team = [Int]()


func makeTeam(){
    if team.count == n/2{
        var start = teamScore(arr: team)
        var link = teamScore(arr: Array(link.subtracting(Set(team))))
        min.append(abs(start - link))
    }
    
    for i in 0...(n-1){
        if !team.contains(i) && team.last ?? 0 < i{
            team.append(i)
            makeTeam()
            team.popLast()
        }
    }
}


func teamScore(arr:[Int]) -> Int{
    var Score = 0
    for i in 0..<arr.count-1{
        for j in i+1..<arr.count{
            Score += ability[arr[i]][arr[j]]
            Score += ability[arr[j]][arr[i]]
        }
    }
    return Score
}


makeTeam()
print(min.min()!)
