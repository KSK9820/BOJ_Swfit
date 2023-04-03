//
//  14215.swift
//  기하1
//
//  Created by 김수경 on 2023/04/03.
//

import Foundation

let input = readLine()!.split(separator: " ").map{Int($0)!}

let m = input.max()!
if input.reduce(0, +) - m <= m {
    print((input.reduce(0, +) - m) * 2 - 1 )
}else{
    print(input.reduce(0,+))
}
