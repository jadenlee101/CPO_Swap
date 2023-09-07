//
//  UserShift.swift
//  CPO Swap
//
//  Created by Jaden Lee on 2023-09-06.
//

import Foundation

struct UserShift: Codable, Identifiable {
    //User detail
    let firstName : String
    let lastName : String
    let reg : String
    let phone : String
    let email : String
    //Shift detail
    let id: String
    let location: String
    let day : TimeInterval
    let start : TimeInterval
    let end : TimeInterval
    let note : String
    
    //Swap sucess
    var isSwapped : Bool
    
    mutating func SwapDone (_ state: Bool) {
        isSwapped = state
    }
}
