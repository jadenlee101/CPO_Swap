//
//  ShiftDetailView.swift
//  CPO Swap
//
//  Created by Jaden Lee on 2023-09-06.
//

import SwiftUI

struct ShiftDetailView: View {
    let shift : UserShift
    @StateObject var viewModel = ShiftDetailViewModel()
    
    
    var body: some View {
        NavigationView{
            Form{
                Section{
                    Text("Shift Location: \(shift.location)")
                    Text("Start time: \(Date(timeIntervalSince1970: shift.start).formatted(date: .omitted, time: .shortened))")
                    Text("End time: \(Date(timeIntervalSince1970: shift.end).formatted(date: .omitted, time: .shortened))")
                    Text("Note: \(shift.note)")
                } header: {
                    Text("Shift detail")
                }
                
                Section{
                    Text("Name: \(shift.firstName)")
                    Text("Phone Number: \(shift.phone)")
                    Text("Email: \(shift.email)")
                } header: {
                    Text("Contact Detail:")
                }
                Section {
                    TextField("Enter Last Name", text: $viewModel.enteredLast)
                    TextField("Enter Reg", text: $viewModel.enteredReg)
                    Button{
                        viewModel.delete(uid: shift.id, reg: shift.reg, last: shift.lastName)
                    } label: {
                        Text("Delete")
                            .foregroundColor(.red)
                    }
                    Text(viewModel.DeleteerrorMessage)
                        .foregroundColor(.red)
                    
                }
                
            }
            .navigationTitle(" \(Date(timeIntervalSince1970: shift.day).formatted(date: .abbreviated, time: .omitted))")
            
        }
    }
}

struct ShiftDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ShiftDetailView(shift: UserShift(firstName: "sef", lastName: "fsef", reg: "fsefs", phone: "fess",email: "email@com", id: "fesfs", location: "fsef", day: Date().timeIntervalSince1970, start: Date().timeIntervalSince1970, end: Date().timeIntervalSince1970, note: "fssef", isSwapped: false))
    }
}
