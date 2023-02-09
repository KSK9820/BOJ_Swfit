//
//  24060.swift
//  재귀
//
//  Created by 김수경 on 2023/02/08.
//

import Foundation

var k = readLine()!.split(separator: " ").map{ Int(String($0))! }[1]
var a = readLine()!.split(separator: " ").map{ Int(String($0))! }
var tmp:[Int] = Array(repeating: 0, count: a.count)

var cnt = 0
var printed = false


func merge_sort(p: Int, r: Int){
    if p < r{
        var q = (p + r) / 2
        merge_sort(p: p, r: q)
        merge_sort(p: q + 1, r: r)
        merge(p: p, q: q, r: r)
    }
}

func merge(p: Int, q: Int, r: Int) {
    var i = p, j = q + 1, t = 0


    while(i <= q && j <= r){
        if(a[i] <= a[j]){
            tmp[t] = a[i]
            t+=1; i += 1
        }else{
            tmp[t] = a[j]
            t+=1; j+=1
        }
    }
    while(i<=q){
        tmp[t] = a[i]
        t+=1; i += 1
    }
    while(j<=r){
        tmp[t] = a[j]
        t+=1; j+=1
    }
    i = p; t = 0
    while(i<=r){
        a[i] = tmp[t]
        i += 1; t += 1; cnt += 1
        if(cnt == k){
            print(a[i-1])
            printed = true
            break
        }
    }
}

merge_sort(p: 0, r: a.count - 1)
if !printed{
    print(-1)
}



