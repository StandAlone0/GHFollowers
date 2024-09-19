//
//  ErrorMessages.swift
//  GHFollowers
//
//  Created by Евгений on 19.09.2024.
//

import Foundation

enum GHError: String, Error {
    case invalidUrl = "Invalid URL"
    case networkError = "Unable to make network call. Please, check your internet connection."
    case invalidResonse = "Invalid response. Please, try again later."
    case noData = "No data received. Please, try again later."
    case parseError = "Unable to decode data. Please, try again later."
}
