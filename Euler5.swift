//
//  Euler5.swift
//  Euler1
//
//  Created by Andrew Ash on 11/21/14.
//
//

import Foundation

/*var i = 2 * 3 * 5 * 7 * 11 * 13 * 17 * 19
var j = 20

testLoop: while i >= 1 {
    while j > 1 {
        if i % j != 0 {
            i += i % j
            println(i)
            j = 20
            continue testLoop
        }
        --j
    }
    break
}
println("\(i) is the answer!")
//Too slow!*/

var answer = 2
for i in 3...20 {
    answer *= i
}

extension Int {
    func isCommon() -> Bool {
        var factor = 20
        while factor > 1 {
            if self % factor != 0 {
                return false
            }
            --factor
        }
        return true
    }
}

var divisor = 20
while divisor > 1 {
    while Int(answer / divisor).isCommon() {
        answer /= divisor
    }
    --divisor
}

println(answer)