//
//  Euler2.swift
//  Euler1
//
//  Created by Andrew Ash on 11/21/14.
//
//

import Foundation

var fib1 = 1
var fib2 = 2
var newFib = 0
var fibs = [Int]()
var sum = 0

while fib1 <= 4_000_000 {
    fibs.append(fib1)
    newFib = fib1 + fib2
    fib1 = fib2
    fib2 = newFib
}

for fib in fibs {
    if fib % 2 == 0 {
        sum += fib
    }
}

println(sum)