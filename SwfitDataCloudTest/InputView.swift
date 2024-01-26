//
//  InputView.swift
//  SwfitDataCloudTest
//
//  Created by Rick Stoner on 1/25/24.
//

import SwiftUI

import SwiftUI
import SwiftData

struct InputView: View {
    @Environment(\.presentationMode) var presentationMode
    @Environment(\.modelContext) private var modelContext
    @State private var firstName = ""
    @State private var lastName = ""
    
    var body: some View {
        VStack {
            TextField("First Name", text: $firstName)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            
            TextField("Last Name", text: $lastName)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            
            Button(action: {
                let newPerson = Person(firstName: firstName, lastName: lastName, gender: .other)
                modelContext.insert(newPerson)
                presentationMode.wrappedValue.dismiss()

            }) {
                Text("Submit")
                    .frame(minWidth: 0, maxWidth: .infinity)
                    .padding()
                    .foregroundColor(.white)
                    .background(Color.green)
                    .cornerRadius(40)
            }
            .padding()
        }
    }
}

#Preview {
    InputView()
}


#Preview {
    InputView()
}
