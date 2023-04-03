//
//  RMService.swift
//  RickAndMorty
//
//  Created by 山本響 on 2023/04/03.
//

import Foundation

/// Primary API service object to get Flick and Morty data
final class RMServive {
    /// Shared singlton instance
    static let shared = RMServive()
    
    /// Privatized constructer
    private init() {}
    
    /// Send Rick and Morty API Call
    /// - Parameters:
    ///   - request: Request Instance
    ///   - completion: Callback with data or error
    public func execute(_ request: RMRequest, completion: @escaping () -> Void) {
        
    }
}
