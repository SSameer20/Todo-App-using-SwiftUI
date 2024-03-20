//
//  modelData.swift
//  my-todo
//
//  Created by Yashwant Singh on 08/03/24.
//

import Foundation
class Task: ObservableObject {
    @Published var items: [modelData] = [
        modelData(title : "Task 1", desc: "This is the first task", status: false, date : Date())
    ]
}

struct modelData : Identifiable {
    let id : String =  UUID().uuidString
    let title : String
    let desc : String
    let status : Bool
    let date : Date
    
    
}
