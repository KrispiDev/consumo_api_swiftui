//
//  EpisodeListRepository.swift
//
//
//  Created by Cristian Piedrahita on 15/04/2024.
//

import Domain
import struct Foundation.URL

typealias EpisodeListResult = Result<EpisodeList, EpisodeListRepositoryError>

enum EpisodeListRepositoryError: Error {
    case unableToDecode
    case dataSource(Error)
}

protocol EpisodeListRepository {
    func retrieve() async -> EpisodeListResult
    func retrieve(url: URL) async -> EpisodeListResult
}
