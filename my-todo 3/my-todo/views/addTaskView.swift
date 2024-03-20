//
//  addTaskView.swift
//  my-todo
//
//  Created by Yashwant Singh on 08/03/24.
//

import SwiftUI

struct addTaskView: View {
  @Environment(\.presentationMode) var presentationMode
  @EnvironmentObject var listView: listModel
  @State var title: String = ""
  @State var desc: String = ""
  @State var selectedDate: Date = Date()
@State private var showingAlert = false
    

  func saveButton() {
    listView.addItem(title: title, desc: desc, date: selectedDate)
    title = ""
    desc = ""
    presentationMode.wrappedValue.dismiss()
      if(selectedDate == Date()){
          Alert(title: Text("Alert Title"),
                      message: Text("This is an alert message."),
                      dismissButton: .default(Text("OK")))
      }
      
       
  }

  var body: some View {
    NavigationView {
      ScrollView {
        TextField("Title Name : ", text: $title)
          .padding(.horizontal)
          .frame(height: 55)
          .foregroundColor(.black)
          .border(Color.black)
          .cornerRadius(2.0)
          // Optional: You can uncomment this line to add a background color
          //.background(Color.indigo)

        TextField("Note : ", text: $desc)
          .padding()
          .border(Color.black)
          .foregroundColor(.black)
          .frame(height: 55)

        DatePicker("Select a Date", selection: $selectedDate, in: Date()..., displayedComponents: [.date, .hourAndMinute])
          .foregroundColor(.blue)
          .datePickerStyle(.compact)

        Button(action: saveButton, label: {
          Text("Save".uppercased())
            .foregroundColor(.white)
            .font(.title)
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .background(Color.blue)
            .cornerRadius(3.0)
        })
      }
      .padding(.horizontal)
      // Optional: You can uncomment this line to add a background color
      //.background(Color(.gray))
      .foregroundColor(.white)
    }
    .navigationTitle("Add Task")
  }
}


#Preview {
    NavigationView{
        
        
        addTaskView()
    }
    .environmentObject(listModel())
}
