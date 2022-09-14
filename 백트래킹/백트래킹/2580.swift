//
//  2580.swift
//  백트래킹
//
//  Created by 김수경 on 2022/09/08.
//

import Foundation

var sudoku = Array(repeating: Array(repeating: 0, count: 9), count: 9)
var isPrint = false

for i in 0..<9{
    let input = readLine()!.split(separator: " ").map{Int(String($0))!}
    for j in 0..<9{
        sudoku[i][j] = input[j]
    }
}

func dfs(x: Int){
    //답 하나만 찾으면 끝
    if isPrint{
        return
    }
    
    for i in 0..<81{
        let row = i / 9
        let col = i % 9
        
        if sudoku[row][col] == 0 {
            for j in 1...9{
                if makeSudoku(row: row, col: col, num: j){
                    sudoku[row][col] = j
                    dfs(x: i + 1)
                }
            }
            sudoku[row][col] = 0
            return
            
        }
    }
    
    if isPrint == false{
        printSudoku()
    }
    isPrint = true
}

func makeSudoku(row: Int, col: Int, num: Int) -> Bool{
    //가로, 새로
    for i in 0..<9{
        if sudoku[row][i] == num { return false}
        if sudoku[i][col] == num { return false}
    }
    
    //블럭
    let blockRow = row / 3 * 3
    let blockCol = col / 3 * 3
    for i in blockRow...(blockRow + 2){
        for j in blockCol...(blockCol + 2){
            if sudoku[i][j] == num { return false }
        }
    }
    return true
}


func printSudoku(){
    for i in 0..<9{
        print(sudoku[i].map{String($0)}.joined(separator: " "))
    }
}

dfs(x: 0)

