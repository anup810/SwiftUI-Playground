//
//  AcrosticPoemView.swift
//  Text Exploration
//
//  Created by Anup Saud on 2025-03-06.
//

import SwiftUI
struct LineOfPoetry: Identifiable{
    let id = UUID()
    let line : String
    
    var firstChar: String{
        if let first = line.first{
            return String(first)
        } else{
            return ""
        }
    }
    var remaningLine: String{
        String(line.dropFirst())
    }

}

struct AcrosticPoemView: View {
    let poem: [LineOfPoetry] = [
        .init(line: "Drifting beneath the silver glow,"),
        .init(line: "Air alive with whispers low."),
        .init(line: "Night unfolds its magic bright"),
        .init(line: "Charming hearts in lunar light."),
        .init(line: "In the hush of midnight's song,"),
        .init(line: "Nothing feels quite right or wrong."),
        .init(line: "Gliding free, we twirl in time..")
    ]
    var body: some View {
        VStack(alignment: .leading){
            Spacer()
            ForEach(poem) { line in
                colorFirstLetterOfPoem(line: line)
            }
            Spacer()
        }

    }
    func colorFirstLetterOfPoem(line: LineOfPoetry , color: Color = .red) -> Text{
        return Text("\(Text(line.firstChar).foregroundStyle(color).bold())\(Text(line.remaningLine))")
    }
}


#Preview {
    AcrosticPoemView()
}
