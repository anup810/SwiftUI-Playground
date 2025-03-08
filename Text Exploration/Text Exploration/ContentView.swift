//
//  ContentView.swift
//  Text Exploration
//
//  Created by Anup Saud on 2025-03-06.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack{
            List{
                NavigationLink("Acrostic Poems") {
                    AcrosticPoemView()
                }
                NavigationLink("Markdown") {
                    MarkdownView()
                }
                NavigationLink("Markdown and String Interpolation") {
                    Markdown_and_String_Interpolation_Demo()
                }
                NavigationLink("Markdown and Code") {
                    Displaying_Code_with_Markdown()
                }
                NavigationLink("Open Url") {
                    OpenURLDemoView()
                }
                NavigationLink(" PluraliaztionExample") {
                    PluraliaztionExample()
                }
                NavigationLink("Text Date Example") {
                    TextDate()
                }
                NavigationLink(" Attributed String Example") {
                    AttributedStringExample()
                }
            
                
            }
            .navigationTitle("Style and Text View")
        }

    }
}

#Preview {
    ContentView()
}
