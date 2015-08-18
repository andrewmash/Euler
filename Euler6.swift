//
//  Euler6.swift
//  Euler1
//
//  Created by Andrew Ash on 11/23/14.
//
//

import Foundation

var sumSquares = 0
var squareSum = 0

for i in 1...100 {
    sumSquares += i * i
    squareSum += i
}
squareSum *= squareSum

println(squareSum - sumSquares)