//
//  listRow.swift
//  my-todo
//
//  Created by Yashwant Singh on 08/03/24.
//

import SwiftUI

struct listRow: View {
    let item : modelData
    @State var pTime : Date = Date();
    var body: some View {
        HStack{
            Image(systemName: (pTime > item.date) ? "checkmark.circle" : "circle")
                .foregroundColor((pTime > item.date) ? .green : .red)
            Text(item.title)
                .foregroundColor((pTime > item.date) ? .green : .red)
            
                .padding()
            
            
            Text(item.date, format: .dateTime.hour().minute())
                    .foregroundColor(.black)
                    
        }
    }
}

#Preview {
    NavigationView{
        listRow(item : modelData(title: "task 1", desc: "task desc", status: false,date: Date()))
    }
    
    
}
