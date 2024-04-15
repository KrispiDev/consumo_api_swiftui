//
//  EpisodeDetailNavigator.swift
//
//
//  Created by Cristian Piedrahita on 15/04/2024.
//

import Domain
import SwiftUI

protocol EpisodeDetailWireframe {
    func showCharacter(_ character: Character) -> AnyView
}

struct EpisodeDetailNavigator: EpisodeDetailWireframe {
    private let dependencies: EpisodeDetailModuleFactory.Dependencies

    init(dependencies: EpisodeDetailModuleFactory.Dependencies) {
        self.dependencies = dependencies
    }

    func showCharacter(_ character: Character) -> AnyView {
        dependencies.characterDetail(character)
    }
}
