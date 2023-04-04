//
//  13909.swift
//  약수,배수와소수2
//
//  Created by 김수경 on 2023/04/04.
//

import Foundation

let n = Int(readLine()!)!

var i = 1
var window = 0
while i*i<=n{
    window += 1
    i += 1
}
print(window)
