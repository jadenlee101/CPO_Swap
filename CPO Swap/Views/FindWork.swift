//
//  FindWork.swift
//  CPO Swap
//
//  Created by Jaden Lee on 2023-07-29.
//

import SwiftUI
import FirebaseFirestoreSwift

struct FindWork: View {
    @StateObject var viewModel = FindWorkViewModel()
    @FirestoreQuery var shifts : [UserShift]
    
    init(){
        self._shifts = FirestoreQuery(collectionPath: "shifts/")
    }
    
    var body: some View {
        NavigationView {
            
            VStack{
                HStack{
                    Spacer()
                    Text("Location:")
                        .font(.title2)
                        .bold()
                    Spacer()
                    Text("Start time:")
                        .font(.title2)
                        .bold()
                    Spacer()
                }
                
                List(shifts) { shift in
                    ShiftView(shift: shift)
                }
                .listStyle(PlainListStyle())
                
                
            }
        }
    }
}

struct FindWork_Previews: PreviewProvider {
    static var previews: some View {
        FindWork()
    }
}
