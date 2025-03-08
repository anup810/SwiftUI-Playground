//
//  PluraliaztionExample.swift
//  Text Exploration
//
//  Created by Anup Saud on 2025-03-07.
//

import SwiftUI

struct PluraliaztionExample: View {
    @State private var count = 0
    let nounList = [ "bread", "salt", "domino", "radius", "child", "foot", "tooth", "man", "woman", "goose", "focus", "matrix", "deer", "oasis", "fish", "index", "boom", "brush"]
    var body: some View {
        NavigationStack{
            VStack{
                Form {
                    ForEach(nounList, id: \.self) { noun in
                        LabeledContent(noun.capitalized){
                            Text("^[\(count) \(noun.capitalized)](inflect: true)")
                            
                        }
                    }
                }
                Button("Increment", systemImage: "plus.circle.fill") {
                    count += 1
                }
            }
            .font(.title)
            .toolbar {
                ToolbarItem{
                    Button("Reset") {
                        count = 0
                    }
                    
                }
        
            }
            .navigationTitle("Pluralization")
        }

    }
}

#Preview {
    PluraliaztionExample()
}
