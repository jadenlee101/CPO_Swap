//
//  UserShift.swift
//  CPO Swap
//
//  Created by Jaden Lee on 2023-09-06.
//

import Foundation

struct UserShift: Codable, Identifiable {
    //User detail
    let name : String
    let reg : Int
    let phone : Int
    
    //Shift detail
    let id: String
    let location: String
    let start : TimeInterval
    let end : TimeInterval
    
    //Swap sucess
    var isSwapped : Bool
    
    mutating func SwapDone (_ state: Bool) {
        isSwapped = state
    }
}
