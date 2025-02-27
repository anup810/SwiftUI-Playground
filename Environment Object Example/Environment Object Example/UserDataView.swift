//
//  UserDataView.swift
//  Environment Object Example
//
//  Created by Anup Saud on 2025-02-26.
//

import SwiftUI

struct UserDataView: View {
    @EnvironmentObject var userViewModel : UserViewModel
    var body: some View {
        VStack {
            Text("Name: \(userViewModel.name)")
            TextField("Enter your Name", text: $userViewModel.name)
                .padding()
                .background(Color.blue.opacity(0.3))
                .padding()
        }
        .navigationTitle("Enter Your Name")
       
    }
}

#Preview {
    NavigationStack {
        UserDataView()
            .environmentObject(UserViewModel())
    }
}
