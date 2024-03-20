//
//  addTask.swift
//  my-todo
//
//  Created by Yashwant Singh on 08/03/24.
//

import SwiftUI

struct addTask: View {
    @State var items : [modelData] = [
        ]
    
    var body: some View {
        NavigationView{
            List{
                VStack{
                    
                                               /*if(item.status == "false"){
                            .background(Color(.red))
                        }
                        else{
                            .background(Color(.green))
                        }*/
                    
                }
            }
            
        }
        .navigationTitle("Create Task")
        
    }
}

#Preview {
    NavigationView{
        addTask()
    }
    
}
