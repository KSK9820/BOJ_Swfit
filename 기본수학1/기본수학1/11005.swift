//
//  11005.swift
//  기본수학1
//
//  Created by 김수경 on 2023/03/31.
//

import Foundation

let input = readLine()!.split(separator: " ").map{Int(String($0))!}
print(String(input[0], radix: input[1]).uppercased())
