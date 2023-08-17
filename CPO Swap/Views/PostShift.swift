//
//  PostShift.swift
//  CPO Swap
//
//  Created by Jaden Lee on 2023-07-29.
//

import SwiftUI
import FirebaseCore
import FirebaseFirestore

struct PostShift: View {
    @State private var daySelected = Date.now
    @State private var start: String = ""
    
    
    //let db = Firestore.firestore()
    
    var body: some View {
        NavigationView {
            Form {
                Section{
                    DatePicker(selection: $daySelected, in: Date.now..., displayedComponents: .date) {
                        Text("Select a date:")
                    }
                } header: {
                    Text("Which day you need off")
                }
                
                Section{
                    TextField("Start Time", text: $start)
                    Text("End time")
                    Text("Note: your availability?")
                } header: {
                    Text("Tell us about the shift")
                }
                
                Section{
                    Text("Name:")
                    Text("Email:")
                    Text("Phone:")
                    Text("Reg#:")
                } header: {
                    Text("Your info")
                }
                Button{
                    
                } label: {
                    
                    Text("Submit")
                }
                
            }
            .navigationTitle("CPO Swap")
        }
    }
}

struct PostShift_Previews: PreviewProvider {
    static var previews: some View {
        PostShift()
    }
}
