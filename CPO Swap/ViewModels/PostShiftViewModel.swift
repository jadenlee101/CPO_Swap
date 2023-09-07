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
    var locations = ["DMU", "ICC", "SW","Scona", "Ddiv", "Other"]
    @Published var selectedLocation = "DMU"
    @Published var daySelected = Date.now
    @Published var start = Date()
    @Published var end = Date()
    @Published var location = ""
    @Published var firstName = ""
    @Published var lastName = ""
    @Published var reg = ""
    @Published var phone = ""
    @Published var note = ""
    
    
    func submit (){
        
        //create model
        let newId = UUID().uuidString
        let newShift = UserShift(firstName: firstName,lastName: lastName, reg: reg, phone: phone, id: newId, location: selectedLocation, day: daySelected.timeIntervalSince1970, start: start.timeIntervalSince1970 , end: end.timeIntervalSince1970, note: note, isSwapped: false)
        
        //save model
        let db = Firestore.firestore()
        db.collection("shifts").document(newId).setData(newShift.asDictionary())
        { err in
            if let err = err {
                print("Error adding document: \(err)")
            } else {
                print("Document added with ID:")
            }
        }
    }
}


