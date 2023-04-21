//
//  RMService.swift
//  RickAndMorty
//
//  Created by Davit Margaryan on 21.04.23.
//

import Foundation

///  Primary API service object to get Rick and Morty data
final class RMService {
    /// Shared singleton instance
    static let shared = RMService()
    
    /// Privatized constructor
    private init() {}
    
    
    /// Send Rick and Morty API Call
    ///  - Parameters:
    ///     - request: Request Instance
    ///     - completion: Callback with data or error
    ///
    public func execute(_ request: RMRequest, completion: @escaping () -> Void) {
        
    }
    
}
