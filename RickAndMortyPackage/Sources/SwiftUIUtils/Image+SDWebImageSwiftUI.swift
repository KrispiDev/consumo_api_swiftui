//
//  Image+SDWebImageSwiftUI.swift
//
//
//  Created by Cristian Piedrahita on 15/04/2024.
//

import SwiftUI

public struct URLImage: View {
    let imageUrl: URL?

    public init(imageUrl: URL?) {
        self.imageUrl = imageUrl
    }

    public var body: some View {
        AsyncImage(
            url: imageUrl,
            content: { image in
                image.resizable()
            },
            placeholder: {
                Color.gray
            }
        )
    }
}
