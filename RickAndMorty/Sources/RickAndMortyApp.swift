//
//  RickAndMortyApp.swift
//
//
//  Created by Cristian Piedrahita on 15/04/2024.
//

import SwiftUI

@main
struct RickAndMortyApp: App {
    private let dependenciesResolver = DependenciesResolver()

    var body: some Scene {
        WindowGroup { () -> MainTabBar in
            MainTabBar(
                characterListView: AnyView(dependenciesResolver.characterListFactory.make()),
                locationListView: AnyView(dependenciesResolver.locationListFactory.make()),
                episodeListView: AnyView(dependenciesResolver.episodeListFactory.make())
            )
        }
    }
}
