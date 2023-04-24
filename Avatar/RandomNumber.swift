//
//  RandomNumber.swift
//  Avatar
//
//  Created by Juan Camilo Marín Ochoa on 30/04/23.
//

import Foundation

func RandomNumber() -> String {
    var result = ""

    for _ in 0..<12 {
        let randomNumber = arc4random_uniform(10)
        result += "\(randomNumber)"
    }

    return result
}
