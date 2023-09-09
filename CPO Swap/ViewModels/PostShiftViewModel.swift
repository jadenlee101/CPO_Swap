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
    @Published var email = ""
    @Published var message = ""
    @Published var submitSucessMessage = ""
    
    func submit (){
        guard validate else {
            return
        }
        //create model
        let newId = UUID().uuidString
        let newShift = UserShift(firstName: firstName,lastName: lastName, reg: reg, phone: phone,email: email, id: newId, location: selectedLocation, day: daySelected.timeIntervalSince1970, start: start.timeIntervalSince1970 , end: end.timeIntervalSince1970, note: note, isSwapped: false)
        
        //save model
        let db = Firestore.firestore()
        db.collection("shifts").document(newId).setData(newShift.asDictionary())
        { err in
            if let err = err {
                print("Error adding document: \(err)")
            } else {
                print("Document added with ID: \(newId)")
                self.message = "Your request has been submitted"
                self.resetForm()
            }
        }
    }
    
    //validate for emtpy strings
    var validate : Bool {
        guard !firstName.trimmingCharacters(in: .whitespaces).isEmpty else {
            self.message = "Please enter your first name"
            return false
        }
        guard !lastName.trimmingCharacters(in: .whitespaces).isEmpty else {
            self.message = "Please enter your last name"
            return false
        }
        guard !phone.trimmingCharacters(in: .whitespaces).isEmpty else {
            self.message = "Please enter your phone number"
            return false
        }
        guard !reg.trimmingCharacters(in: .whitespaces).isEmpty else {
            self.message = "Please enter your reg number "
            return false
        }
        
        return true
    }
    
    func resetForm () {
        self.firstName = ""
        self.lastName = ""
        self.phone = ""
        self.reg = ""
        self.email = ""
        self.note = ""
    }
}


