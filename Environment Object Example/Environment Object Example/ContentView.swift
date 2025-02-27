//
//  ContentView.swift
//  Environment Object Example
//
//  Created by Anup Saud on 2025-02-26.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var userViewModel : UserViewModel
    var body: some View {
        NavigationStack {
            VStack {
                Text("My name is: \(userViewModel.name)")
                    .font(.title)
                NavigationLink("Update Data") {
                    UserDataView()
                }
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
        .environmentObject(UserViewModel())
}
