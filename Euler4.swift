//
//  Euler4.swift
//  Euler1
//
//  Created by Andrew Ash on 11/21/14.
//
//

import Foundation

extension Int {
    func isPalindrome() -> Bool {
        var asString = String(self)
        var asArray = [Character]()
        for character in asString {
            asArray.append(character)
        }
        for character in asString {
            if character != asArray[asArray.count - 1] {
                return false
            }
            asArray.removeLast()
        }
        return true
    }
}

var challenger = 0
var contender = 0

for var i = 999; i >= 100; --i {
    for var j = 999; j >= 100; --j {
        challenger = i * j
        if challenger.isPalindrome() {
            println("\(challenger) is a palindrome")
            if challenger > contender {
                contender = challenger
                println("\(contender) is the new contender")
            }
        }
    }
}
println("\(contender) is the answer!")