//
//  MainTabBar.swift
//
//
//  Created by Cristian Piedrahita on 15/04/2024.
//

import SwiftUI

struct MainTabBar: View {
    let characterListView: AnyView
    let locationListView: AnyView
    let episodeListView: AnyView

    var body: some View {
        TabView {
            characterListView
                .tabItem {
                    TabBarIcon.characters.image
                    Text("Characters")
                }
            locationListView
                .tabItem {
                    TabBarIcon.locations.image
                    Text("Locations")
                }
            episodeListView
                .tabItem {
                    TabBarIcon.episodes.image
                    Text("Episodes")
                }
        }
        .accentColor(Color("Accent"))
    }
}

struct MainTabBar_Previews: PreviewProvider {
    static var previews: some View {
        MainTabBar(
            characterListView: AnyView(Text("Hey")),
            locationListView: AnyView(Text("Hey")),
            episodeListView: AnyView(Text("Hey"))
        )
    }
}
