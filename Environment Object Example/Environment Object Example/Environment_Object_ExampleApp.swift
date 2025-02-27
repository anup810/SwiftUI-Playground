//
//  Environment_Object_ExampleApp.swift
//  Environment Object Example
//
//  Created by Anup Saud on 2025-02-26.
//

import SwiftUI

@main
struct Environment_Object_ExampleApp: App {
   // @StateObject private var userViewModel = UserViewModel()
    @State private var personViewModel = PersonViewModel()
    var body: some Scene {
        WindowGroup {
            ContentView()
                //.environmentObject(userViewModel)
                .environment(personViewModel)
        }
    }
}
