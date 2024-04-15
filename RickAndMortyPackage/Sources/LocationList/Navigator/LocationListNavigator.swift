//
//  LocationListNavigator.swift
//
//
//  Created by Cristian Piedrahita on 15/04/2024.
//

import Domain
import SwiftUI

protocol LocationListWireframe {
    func showLocation(_ location: Location) -> AnyView
}

struct LocationListNavigator: LocationListWireframe {
    private let dependencies: LocationListModuleFactory.Dependencies

    init(dependencies: LocationListModuleFactory.Dependencies) {
        self.dependencies = dependencies
    }

    func showLocation(_ location: Location) -> AnyView {
        dependencies.locationDetail(location)
    }
}
