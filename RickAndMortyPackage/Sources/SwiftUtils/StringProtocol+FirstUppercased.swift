//
//  StringProtocol+FirstUppercased.swift
//
//
//  Created by Cristian Piedrahita on 15/04/2024.
//

public extension StringProtocol {
    var firstUppercased: String {
        prefix(1).uppercased() + dropFirst()
    }
}
