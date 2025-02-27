//
//  EnvironmentExample.swift
//  Environment Object Example
//
//  Created by Anup Saud on 2025-02-26.
//

import SwiftUI

@Observable
class PersonViewModel{
    var firstName: String = "Anup"
    var lastName: String = "Saud"
    
    var getFullName: String{
        "\(firstName) \(lastName)"
    }
    func changePerson(){
        let names: [(String, String)] = [
            ("John", "Doe"),
            ("Emma", "Smith"),
            ("Liam", "Johnson"),
            ("Olivia", "Brown"),
            ("Noah", "Williams")
        ]
        let randomName: (String, String) = names.randomElement() ?? ("","")
        firstName = randomName.0
        lastName = randomName.1
        
    }
    
}
struct EnvironmentExample: View {
    @Environment(PersonViewModel.self) private var personViewModel
    var body: some View {
        VStack{
            Text(personViewModel.getFullName)
            Button("Change Person") {
                personViewModel.changePerson()
            }
        }
       
    }
}

#Preview {
    EnvironmentExample()
        .environment(PersonViewModel())
}
