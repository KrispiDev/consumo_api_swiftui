//
//  CharacterListInfo.swift
//
//
//  Created by Cristian Piedrahita on 15/04/2024.
//

public struct CharacterListInfo {
    public let characters: [Character]
    public let nextPageRequest: GetCharacterListType?

    public init(characters: [Character], nextPageRequest: GetCharacterListType?) {
        self.characters = characters
        self.nextPageRequest = nextPageRequest
    }
}

public extension CharacterListInfo {
    var areMoreAvailable: Bool {
        nextPageRequest != nil
    }
}
