//
//  Euler7.swift
//  Euler1
//
//  Created by Andrew Ash on 11/23/14.
//
//

import Foundation

let max = 10_000

struct number {
    var value: Int
    var isPrime: Bool
}

var primes = [number]()
var numbers = [number](count: max + 1, repeatedValue: number(value: 0, isPrime: false))

for i in 0...max {
    numbers[i] = number(value: i, isPrime: true)
}

numbers[0].isPrime = false
numbers[1].isPrime = false

var index = 0

for number in numbers {
    if number.isPrime {
        println(number.value)
        primes.append(number)
        index = number.value
        while (number.value + index) <= max {
            numbers[number.value + index].isPrime = false
            index += number.value
        }
    }
}

if primes.count < 10_001 {
    println("Too small!")
} else {
    println(primes[10_000].value)
}
