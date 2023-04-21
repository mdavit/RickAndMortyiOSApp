//
//  RMCharacterStatus.swift
//  RickAndMorty
//
//  Created by Davit Margaryan on 22.04.23.
//

import Foundation

enum RMCharacterStatus: String, Codable {
    case alive = "Alive"
    case dead = "Dead"
    case `unknown` = "unknown"
}
