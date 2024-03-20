//
//  display.swift
//  my-todo
//
//  Created by Sameer Shaik on 08/03/24.
//

import SwiftUI

struct display: View {
    @State var title : String
    //@State var flag : Bool = true
    var body: some View {
        NavigationView{
            List{
                HStack{
                    Text("\(title)")
                    Spacer()
                   // Text("Description")
                }
                .foregroundColor(flag ? Color.blue : Color.red)
                //.background(flag ? Color(.green) : Color(.red))
            }        }
    }
}

#Preview {
    NavigationView{
        display(title:"",flag : false)
    }
}
