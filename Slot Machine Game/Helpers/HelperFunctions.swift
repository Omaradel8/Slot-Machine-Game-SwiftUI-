//
//  HelperFunctions.swift
//  Slot Machine Game
//
//  Created by Omar Adel on 02/08/2024.
//

import Foundation

func areAllElementsEqual<T: Equatable>(_ elements: [T]) -> Bool {
    guard let firstElement = elements.first else {
        return false
    }
    return elements.allSatisfy { $0 == firstElement }
}
