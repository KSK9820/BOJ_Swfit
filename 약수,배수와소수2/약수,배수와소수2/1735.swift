//
//  1735.swift
//  약수,배수와소수2
//
//  Created by 김수경 on 2023/04/04.
//

import Foundation

let input1 = readLine()!.split(separator: " ").map{Int(String($0))!}
let input2 = readLine()!.split(separator: " ").map{Int(String($0))!}


var up = input1[0] * input2[1] + input2[0] * input1[1]
var down = input1[1] * input2[1]


//a>b
func solution(a: Int, b: Int) -> Int{
    return b==0 ? a: solution(a: b, b: a%b)
}

var gcf = solution(a: down, b: up)
up = up / gcf
down = down / gcf

print("\(up) \(down)")

