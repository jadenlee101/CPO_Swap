//
//  Setting.swift
//  CPO Swap
//
//  Created by Jaden Lee on 2023-08-09.
//

import SwiftUI

struct Setting: View {
    @StateObject var viewModel = SettingViewModel()
    
    var body: some View {
        NavigationView{
            Form{
                Toggle("Notification", isOn: $viewModel.notification)
                    
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
