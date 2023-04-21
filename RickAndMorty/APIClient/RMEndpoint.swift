//
//  RMEndpoint.swift
//  RickAndMorty
//
//  Created by Davit Margaryan on 21.04.23.
//

import Foundation

/// Represents unique API endpoint
@frozen enum RMEndpoint: String {
    /// Endpoint to get character info
    case character
    /// Endpoint to get location info
    case loctaion
    /// Endpoint to get episode info
    case episode
}
