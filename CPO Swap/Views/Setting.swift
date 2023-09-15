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
                Text("Coming soon")
//                Text("Noti permission: \(viewModel.hasPermission.description)")
//                Button {
//                    Task {
//                        await viewModel.requestNotificationPermission()
//                    }
//                } label: {
//                    Text("Request notification permission")
//                }
//                .padding()
//                .buttonStyle(.bordered)
//                .disabled(viewModel.hasPermission)
//                .task {
//                    await viewModel.getAuthStatus()
//                }
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
