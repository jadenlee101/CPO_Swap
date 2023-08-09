//
//  Setting.swift
//  CPO Swap
//
//  Created by Jaden Lee on 2023-08-09.
//

import SwiftUI

struct Setting: View {
    var body: some View {
        NavigationView{
            Form{
                Text("Email:")
                Text("Username:")
                Text("Reg#:")
                Text("Phone:")
                HStack{
                    Button{
                        
                    } label: {
                        Text("Sign out")
                            .foregroundColor(.red)
                    }
                    Spacer()
                    Button{
                        
                    } label: {
                        Text("Change Password")
                    }
                    
                }
            }
            .navigationTitle("Setting")
        }
    }
}

struct Setting_Previews: PreviewProvider {
    static var previews: some View {
        Setting()
    }
}
