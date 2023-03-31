//
//  10988.swift
//  심화1
//
//  Created by 김수경 on 2023/03/30.
//

import Foundation

let input = Array(readLine()!)
//var first = 0, last = input.count - 1
//var isbool = 1

//for i in 0...(last/2){
//    if input[first] != input[last]{
//        isbool = 0
//        break
//    }
//    first += 1; last -= 1
//}
//print(isbool)
//

if input == input.reversed(){
    print(1)
}else{
    print(0)
}
