//
//  PostShiftViewModel.swift
//  CPO Swap
//
//  Created by Jaden Lee on 2023-09-01.
//

import Foundation
import FirebaseFirestore

class PostShiftViewModel : ObservableObject {
    init(){
    }
    @Published var daySelected = Date.now
    @Published var start = ""
    @Published var location = ""
    
    func submit (start : String){
        
        //create model
        
        
        //save model
        let db = Firestore.firestore()
        db.collection("start time").addDocument(data: ["start time" : start])
        { err in
            if let err = err {
                print("Error adding document: \(err)")
            } else {
                print("Document added with ID:")
            }
        }
    }
}


