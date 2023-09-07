//
//  ShiftDetailViewModel.swift
//  CPO Swap
//
//  Created by Jaden Lee on 2023-09-06.
//

import Foundation
import FirebaseFirestore

class ShiftDetailViewModel  : ObservableObject {
    @Published var enteredReg : String = ""
    @Published var enteredLast : String = ""
    @Published var DeleteerrorMessage : String = ""
    
    func delete(uid : String, reg: String, last: String){
        let db = Firestore.firestore()
        
        if enteredReg == reg && enteredLast == last {
            db.collection("shifts").document(uid).delete()
        } else {
            DeleteerrorMessage = "Entered Wrong Reg# or Last Name"
        }
    }
    
    
}
