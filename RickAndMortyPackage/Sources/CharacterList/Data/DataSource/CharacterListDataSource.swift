//
//  CharacterListDataSource.swift
//
//
//  Created by Cristian Piedrahita on 15/04/2024.
//

import Foundation

typealias CharacterListDataResult = Result<CharacterListResponse, CharacterListDataSourceError>

enum CharacterListDataSourceError: Error {
    case unableToDecode
    case custom(Error)
}

protocol CharacterListDataSource {
    func retrieve() async -> CharacterListDataResult
    func retrieve(url: URL) async -> CharacterListDataResult
    func retrieve(parameters: CharacterListRequestParameters) async -> CharacterListDataResult
}
