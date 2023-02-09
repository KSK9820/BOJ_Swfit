//
//  25501.swift
//  재귀
//
//  Created by 김수경 on 2023/02/08.
//

import Foundation

let n = Int(readLine()!)!
var cnt = 0


func recursion(s: [Character], l: Int, r: Int) -> Int{
    cnt += 1
    if (l >= r) {return 1}
    else if(s[l] != s[r]) {return 0}
    else {return recursion(s: s, l: l+1, r: r-1)}
}

func isPalindrome(s: [Character]) -> Int{
    cnt = 0
    return recursion(s: s, l: 0, r: s.count - 1)
}

for _ in 0..<n{
    let line = Array(readLine()!)
    print("\(isPalindrome(s: line)) \(cnt)")
}
