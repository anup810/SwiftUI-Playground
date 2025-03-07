//
//   Displaying_Code_with_Markdown.swift
//  Text Exploration
//
//  Created by Anup Saud on 2025-03-06.
//

import SwiftUI

struct Displaying_Code_with_Markdown: View {
    let codeString = """
**A SwiftUI View**

`import SwiftUI`

`struct Displaying_Code_with_Markdown: View {`
    `var body: some View {`
        `Text("Hello, World!")`
    `}`
`}`

`#Preview {`
    `Displaying_Code_with_Markdown()`
`}`
"""
    var body: some View {
        Text(LocalizedStringKey(codeString))
            .padding()
    }
}
#Preview {
    Displaying_Code_with_Markdown()
}
