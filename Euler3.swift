//
//  Euler3.swift
//  Euler1
//
//  Created by Andrew Ash on 11/21/14.
//
//

import Foundation

func primeFactor() -> Int {
    var answer = 600851475143
    factorLoop: for var i = 2; i < (answer - 1); i++ {
        if answer % i == 0 {
            println("\(i) is a factor of \(answer)")
            answer /= i
            i = 2
            continue factorLoop
        }
    }
    return answer
}
println("\(primeFactor()) is the answer!")