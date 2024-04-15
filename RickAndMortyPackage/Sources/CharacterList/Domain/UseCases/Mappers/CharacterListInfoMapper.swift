//
//  CharacterListInfoMapper.swift
//
//
//  Created by Cristian Piedrahita on 15/04/2024.
//

import Domain

protocol CharacterListInfoMapper {
    func map(response: CharacterList) -> CharacterListInfo
    func map(error: CharacterListRepositoryError) -> GetCharacterListError
}

struct DefaultCharacterListInfoMapper: CharacterListInfoMapper {
    func map(response: CharacterList) -> CharacterListInfo {
        CharacterListInfo(
            characters: response.elements,
            nextPageRequest: response.info.paginationURL.map(GetCharacterListType.url)
        )
    }

    func map(error _: CharacterListRepositoryError) -> GetCharacterListError {
        .unableToGetList
    }
}
