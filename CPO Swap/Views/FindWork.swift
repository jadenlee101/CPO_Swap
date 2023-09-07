//
//  FindWork.swift
//  CPO Swap
//
//  Created by Jaden Lee on 2023-07-29.
//

import SwiftUI
import FirebaseFirestore

struct FindWork: View {
    @StateObject var viewModel = FindWorkViewModel()
    
    var body: some View {
        NavigationView {
            Form {
                Section{
                    Text("shift here")
                    Text("shift here")
                    Text("shift here")
                    
                } header: {
                    Text("Available shifts")
                }
                
            }
            .navigationTitle("Shift Exchange")
        }
    }
}

struct FindWork_Previews: PreviewProvider {
    static var previews: some View {
        FindWork()
    }
}
