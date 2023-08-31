//
//  Login.swift
//  CPO Swap
//
//  Created by Jaden Lee on 2023-08-22.
//

import SwiftUI

struct Login: View {
    var body: some View {
        NavigationView{
            Form{
                Section{
                    Text("Email:")
                    Text("Password:")
                    
                } header: {
                    Text("Enter your email and password")
                }
                
                Section {
                    Button {
                        
                    } label: {
                        Text("Login")
                    }
                    Button{
                        
                    } label: {
                        Text("Forgot Password?")
                    }
                }
            
                
            }
            .navigationTitle("CPO Swap | Login")
        }
    }
}

struct Login_Previews: PreviewProvider {
    static var previews: some View {
        Login()
    }
}
