//
//  ContentView.swift
//  CPO Swap
//
//  Created by Jaden Lee on 2023-07-29.
// an app where CPOs can swap shifts
//features to add:
// reset form after submit , delete security
//notification shift accepted

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        TabView{
            PostShift()
                .tabItem{
                    Label("Post", systemImage: "square.and.pencil")
                }
            FindWork()
                .tabItem{
                    Label("Find Work", systemImage: "list.dash")
                }
            Setting()
                .tabItem{
                    Label("Setting", systemImage: "gear")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
