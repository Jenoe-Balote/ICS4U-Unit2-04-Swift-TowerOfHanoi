//
//  TowersOfHanoi.swift
//
//  Created by Jenoe Balote
//  Created on 2021-12-03
//  Version 1.0
//  Copyright (c) 2021 Jenoe Balote. All rights reserved.
//
//  This program solves the Towers of Hanoi problem.
//

import Foundation

// Solves the Towers of Hanoi through recursion
func tower(
    ring: Int, fromRod: Character, toRod: Character, midRod: Character) {

    if ring > 1 {
        tower(ring: ring - 1, fromRod: fromRod, toRod: midRod, midRod: toRod)
        print("Move disk \(ring) from rod \(fromRod) to rod \(toRod)")
        tower(ring: ring - 1, fromRod: midRod, toRod: toRod, midRod: fromRod)
    } else if ring == 1 {
        print("Move disk 1 from rod \(fromRod) to rod \(toRod)")
    } else {
        print("Please enter a number higher than 0.")
    }
}

// Error message
func errorMessage() {
    print("Please enter a number higher than 0.")
    print("\nDone.")
}

// Takes user input for the amount of rings inside the problem and starts the
// algorithm
let fromRod: Character = "1"
let midRod: Character = "2"
let toRod: Character = "3"

// User prompt
print("Choose the amount of rings: ", terminator: "")

// Validates input
guard let numRingsString = readLine(), !numRingsString.isEmpty else {
    errorMessage()
    exit(001)
}

// Converts input to an int
if let rings = Int(numRingsString) {
    print("")

    // Calls Towers of Hanoi algorithm
    tower(ring: rings, fromRod: fromRod, toRod: toRod, midRod: midRod)
} else {
    print("Please enter a number higher than 0.")
}

print("\nDone.")
