//
//  RMEndpoint.swift
//  RickAndMorty
//
//  Created by 山本響 on 2023/04/03.
//

import Foundation

/// Represents unique AP
@frozen enum RMEndpoint: String {
    /// Endpoint to get character info
    case character
    /// Endpoint to get location info
    case location
    /// Endpoint to get episode info
    case episode
}
