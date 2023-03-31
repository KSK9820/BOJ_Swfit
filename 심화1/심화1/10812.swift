//
//  10812.swift
//  심화1
//
//  Created by 김수경 on 2023/03/30.
//

import Foundation

let input = readLine()!.split(separator: " ").map{Int(String($0))!}
let n = input[0]
let m = input[1]

var bascket = [Int](1...n)

for _ in 1...m{
    let line = readLine()!.split(separator: " ").map{Int(String($0))!}
    var new_bascket = bascket
    
    var begin = line[0]-1, mid = line[2]-1
    var begin_new = line[0]-1
    
    //mid ~ end
    for i in line[2]...line[1]{
        new_bascket[begin_new] = bascket[mid]
        begin_new += 1; mid += 1
    }
    
    //begin ~ mid-1
    for i in line[0]..<line[2]{
        new_bascket[begin_new] = bascket[begin]
        begin_new += 1; begin += 1
    }
    bascket = new_bascket
}

for i in bascket{
    print(i, separator: ",", terminator: " ")
}

