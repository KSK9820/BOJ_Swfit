//
//  25305.swift
//  정렬
//
//  Created by 김수경 on 2023/02/08.
//

import Foundation
let input = readLine()!.split(separator: " ").map{ Int($0)! }
var arr: [Int] = readLine()!.split(separator: " ").map{ Int($0)! }
print(arr.sorted(by: >)[input[1] - 1])
