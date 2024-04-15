//
//  EpisodeListInfo.swift
//
//
//  Created by Cristian Piedrahita on 15/04/2024.
//

public struct EpisodeListInfo {
    public let episodes: [Episode]
    public let nextPageRequest: GetEpisodeListType?

    public init(episodes: [Episode], nextPageRequest: GetEpisodeListType?) {
        self.episodes = episodes
        self.nextPageRequest = nextPageRequest
    }
}

public extension EpisodeListInfo {
    var areMoreAvailable: Bool {
        nextPageRequest != nil
    }
}
