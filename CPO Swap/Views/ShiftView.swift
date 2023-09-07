//
//  ShiftView.swift
//  CPO Swap
//
//  Created by Jaden Lee on 2023-09-06.
//

import SwiftUI

struct ShiftView: View {
    @StateObject var viewModel = ShiftViewModel()
    let shift : UserShift
    
    var body: some View {
        HStack {
            
           Spacer()
            Text(shift.location).font(.title)
            Spacer()
            Text("\(Date(timeIntervalSince1970: shift.day).formatted(date: .abbreviated, time: .omitted))")
            Text("\(Date(timeIntervalSince1970: shift.start).formatted(date: .omitted, time: .shortened))")
            
            Spacer()
        }
        
        
    }
}

struct ShiftView_Previews: PreviewProvider {
    static var previews: some View {
        ShiftView(shift: .init(firstName: "222", lastName: "333", reg: "234", phone: "2323", email: "email.com", id: "2342", location: "ICC", day: Date().timeIntervalSince1970, start: Date().timeIntervalSince1970, end: Date().timeIntervalSince1970, note: "feee", isSwapped: false))
    }
}
