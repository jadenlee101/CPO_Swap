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
                    TextField("Start Time", text: $viewModel.start)
                    Text("End time")
                    Text("Note:")
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
                   viewModel.submit(start : viewModel.start)
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
