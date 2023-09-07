//
//  ShiftDetailViewModel.swift
//  CPO Swap
//
//  Created by Jaden Lee on 2023-09-06.
//

import Foundation
import FirebaseFirestore

class ShiftDetailViewModel  : ObservableObject {
    init(){
        
    }
    
    func delete(uid : String){
        let db = Firestore.firestore()
        db.collection("shifts").document(uid).delete()
    }
}
