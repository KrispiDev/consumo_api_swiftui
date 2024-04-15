//
//  CharacterListRepository.swift
//
//
//  Created by Cristian Piedrahita on 15/04/2024.
//

import Domain
import struct Foundation.URL

typealias CharacterListResult = Result<CharacterList, CharacterListRepositoryError>

enum CharacterListRepositoryError: Error {
    case unableToDecode
    case dataSource(Error)
}

protocol CharacterListRepository {
    func retrieve() async -> CharacterListResult
    func retrieve(url: URL) async -> CharacterListResult
    func retrieve(filters: Filters) async -> CharacterListResult
}
