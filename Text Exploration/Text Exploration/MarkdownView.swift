//
//  MarkdownView.swift
//  Text Exploration
//
//  Created by Anup Saud on 2025-03-06.
//

import SwiftUI

struct MarkdownView: View {
        let favoriteWebsites = """
    ***My Favorite Websites***
    ___My Favorite Websites___

    Here are some of my favorite websites for learning and exploring:

    1. **[Figma](https://figma.com/)**: A collaborative interface design tool for teams to create, prototype, and collaborate on digital designs in real time.
    2. *[Laws of UX](https://lawsofux.com/)*: A collection of principles that describe how users interact with interfaces, guiding designers to create more effective and intuitive user experiences.
    3. ***[Pexels](https://www.pexels.com/)***: A platform offering free stock photos, videos, and music that can be used for personal and commercial projects without attribution.

    ~~Feel free to check them out!~~
    """
        var body: some View {
            Text(LocalizedStringKey(favoriteWebsites))
                .tint(.red)
            .foregroundStyle(.blue)
            .padding()
        }
    }

#Preview {
    MarkdownView()
}
