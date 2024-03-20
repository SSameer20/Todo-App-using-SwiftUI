
import SwiftUI;



struct ContentView: View {
    @EnvironmentObject var listView : listModel
    @State private var pendingCount = 0
        @State private var completedCount = 0
    
    func calculateTaskCounts() {
            pendingCount = 0
            completedCount = 0
        


            for data in listView.items {
                if data.date > Date() {
                    pendingCount += 1
                } else {
                    completedCount += 1
                }
            }
        }
    
    var body: some View {
        NavigationView{
            VStack {
                HStack{
                    
                    HStack {
                        Label("Completed \(completedCount)", systemImage: "checkmark.circle")
                            .foregroundColor(.green)
                    }
                    .frame(maxWidth: 150)
                    .frame(height: 150)
                    .border(Color.green)
                    .background(Color(.white))
                        .cornerRadius(5.0)
                    
                    Spacer()
                    
                    
                    
                    
                    
                    HStack {
                        Label("Pending \(pendingCount)", systemImage: "circle")
                            .foregroundColor(.red)
                    }
                    .frame(maxWidth: 150)
                    .frame(height: 150)
                    .border(Color.red)
                    .background(Color(.white))
                        .cornerRadius(5.0)
                    
                }
                .frame(height: 200)
                .task {
                    calculateTaskCounts()
                }
                
                
                List{
                    ForEach(listView.items){data in
                        listRow(item: data)
                    }
                    
                    
                    .onDelete(perform: listView.deleteItem)
                    .onMove(perform: listView.moveItem)
                }
                   
                    
                    
                
                .listStyle(.sidebar)
                .cornerRadius(3.0)
                
                
            }
            .cornerRadius( 4.0)
            
           
            
        }
        .navigationTitle("Todo Application")
        .navigationBarItems(leading: EditButton(), trailing: NavigationLink(destination: addTaskView()) {
            Text("Add")
        })
        .background(Color.gray)
        .padding()
        
    }
}

#Preview {
    
    NavigationView{
        ContentView()
    }.environmentObject(listModel())
    }
    




