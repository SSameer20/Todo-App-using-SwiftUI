//
//  my_todoApp.swift
//  my-todo
//
//  Created by Sameer Shaik on 08/03/24.
//

import SwiftUI

@main
struct my_todoApp: App {
    @StateObject var listView : listModel = listModel()

    var body: some Scene {
        WindowGroup {
            NavigationView{
                
                ContentView()
            }.environmentObject(listView)
            
        }
    }
}

