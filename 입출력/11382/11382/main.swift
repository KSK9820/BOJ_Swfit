//
//  main.swift
//  11382
//
//  Created by 김수경 on 2023/02/22.
//

import Foundation

let input = readLine()!.split(separator: " ").map{ Int(String($0))! }
print(input.reduce(0, +))

