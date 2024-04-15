//
//  GetCharacterListUseCase.swift
//
//
//  Created by Cristian Piedrahita on 15/04/2024.
//

import struct Foundation.URL

public enum GetCharacterListError: Error {
    case unableToGetList
}

public enum GetCharacterListType: Equatable {
    case homePage
    case filtered(Filters)
    case url(URL)
}

public protocol GetCharacterListUseCase {
    func retrieve(requestType: GetCharacterListType) async -> Result<CharacterListInfo, GetCharacterListError>
}
