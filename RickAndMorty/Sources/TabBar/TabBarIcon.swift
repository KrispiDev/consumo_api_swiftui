//
//  TabBarIcon.swift
//
//
//  Created by Cristian Piedrahita on 15/04/2024.
//

import SwiftUI

enum TabBarIcon {
    case characters
    case locations
    case episodes
}

extension TabBarIcon {
    private var imageResourceName: String {
        switch self {
        case .characters:
            return "person.3.fill"
        case .locations:
            return "map.fill"
        case .episodes:
            return "tv.fill"
        }
    }

    var image: Image {
        Image(systemName: imageResourceName)
    }
}
