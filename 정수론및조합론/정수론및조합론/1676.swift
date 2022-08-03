//
//  1676.swift
//  정수론및조합론
//
//  Created by 김수경 on 2022/08/03.
//

import Foundation
var N = Int(readLine()!)!
var count = 0


//방법 1
//while N >= 5{
//    count += N / 5
//    N /= 5
//}


//방법2 - 0을 따로 고려해야함
//그렇지 않으면 런타임에러
if N == 0 {
    print(0)
}else{
    for i in 1...N{
        var tmp = i
        while tmp > 0, tmp % 5 == 0 {
            count += 1
            tmp = tmp / 5
        }
    }
    print(count)
}


