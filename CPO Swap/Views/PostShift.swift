//
//  PostShift.swift
//  CPO Swap
//
//  Created by Jaden Lee on 2023-07-29.
//

import SwiftUI


struct PostShift: View {
    
    @StateObject var viewModel = PostShiftViewModel()
    
    var body: some View {
        NavigationView {
            Form {
                Section{
                    DatePicker(selection: $viewModel.daySelected, in: Date.now..., displayedComponents: .date) {
                        Text("Select a date:")
                    }
                } header: {
                    Text("Which day you need off")
                }
                
                Section{
                    Picker("Please choose a location", selection: $viewModel.selectedLocation) {
                        ForEach(viewModel.locations, id: \.self) {
                            Text($0)
                        }
                    }
                    DatePicker("Start Time", selection: $viewModel.start, displayedComponents: .hourAndMinute)
    
                   
                    DatePicker("End Time", selection: $viewModel.end, displayedComponents: .hourAndMinute)
                    
                    HStack{
                        Text("Note:")
                        TextEditor(text: $viewModel.note)
                    }
                } header: {
                    Text("Tell us about the shift")
                }
                
                Section{
                    HStack{
                        Text("First Name:")
                        TextField("John", text: $viewModel.firstName)
                    }
                    HStack{
                        Text("Last Name:")
                        TextField("Doe (Required to delete the post)", text: $viewModel.lastName)
                    }
                    HStack{
                        Text("Phone:")
                        TextField("780123456", text: $viewModel.phone)
                    }
                    HStack{
                        Text("Email:")
                        TextField("Optional", text: $viewModel.email)
                            
                    }
                    HStack{
                        Text("Reg#:")
                        TextField("12345 (Required to delete the post)", text: $viewModel.reg)
                    }
                } header: {
                    Text("Your info")
                }
                Button{
                   viewModel.submit()
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
