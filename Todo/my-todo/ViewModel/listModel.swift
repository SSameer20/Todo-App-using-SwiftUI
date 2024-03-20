//
//  modelConnector.swift
//  my-todo
//
//  Created by Sameer Shaik on 08/03/24.
//

import Foundation

class listModel: ObservableObject{
    @Published var items : [modelData] = []
    /*  init(){
        getdata()
    }
    
    func getdata(){
        let newItem = [
          modelData(title: "task 1", desc: "Hi from Task 1", status: false,date : Date()),
            modelData(title: "task 2", desc: "hi from task 2", status: true,date: Date()),
            modelData(title: "task 3", desc: "Hello from task 3", status: false,date: Date())
            
        ]
        items.append(contentsOf: newItem)
    }*/
    func deleteItem (indexSet : IndexSet){
        items.remove(atOffsets: indexSet)
    }
    func moveItem(from: IndexSet, to : Int){
        items.move(fromOffsets: from, toOffset: to)
        
    }
    
    func addItem(title: String,desc : String,date: Date){
        let node = modelData(title: title, desc: desc, status: false, date : date)
        items.append(node)
        
    }
    
   
    
   
}


