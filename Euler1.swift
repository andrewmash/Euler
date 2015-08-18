//
//  Euler1.swift
//  Euler1
//
//  Created by Andrew Ash on 11/21/14.
//
//

import Foundation

var sum = 0
for i in 1..<1000 {
    if i % 3 == 0 || i % 5 == 0 {
        sum += i
    }
}
println(sum)