//
//  NewToDoView.swift
//  ToDoList_Help
//
//  Created by scholar on 6/19/23.
//

//** This file contains all the code for the "popup" screen where users can add their own ToDo Item**

import SwiftUI

struct NewToDoView: View {
    
    //In Iteration 2, add @Environment here
    
    //Add a State property called title that will hold a String
    
    @State var title: String
    //Add a State property called isImportant that will hold a Boolean
    
    @State var isImportant: Bool
    
    //Bind the ToDoItems array here
        //Delete the ToDoItems array binding in iteration 2
    @Binding var toDoItems: [ToDoItem]
    
    //Bind the showNewTask property here
    
    @Binding var showNewTask : Bool
    
    var body: some View {
        
        VStack {
            //Add Text View containing "Task title" here
            
            Text("Task title")
                
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(Color.gray)
            
            //Add TextField here with the Text "Enter task description" and binded to the title state property (text: $title)
            
            TextField("Enter task description", text: $title)
                .border(Color(.gray))
                .padding()
            
            //Add Toggle here that is binded to isImportant (isOn: $isImportant) and the text "Is it important?"
            
            Toggle(isOn: $isImportant) {
                Text("Is it important?")
            }
            
            .padding()
            
            //Add a padding modifier
            
            //Add Button here, delete any code in the action and with the text "Add"
            
            Button(action: {
                
                self.addTask(title: self.title, isImportant: self.isImportant)
                
                self.showNewTask = false
                
            }) {
                Text("Add")
                    .foregroundColor(Color.white)
                    .padding(.vertical)
                    .frame(width: 70.0)
                    .background(Color.blue)
                
              

            }
            
            
            .padding()
            //Add a padding modifier
        }
    }
    //Add the private function addTask here
    
    private func addTask(title: String, isImportant: Bool = false) {
            
            let task = ToDoItem(title: title, isImportant: isImportant)
            toDoItems.append(task)
        }
        //In Iteration 2, update the function to save input to Core Data
}

struct NewToDoView_Previews: PreviewProvider {
    static var previews: some View {
        NewToDoView(title: "", isImportant: false, toDoItems: .constant([]), showNewTask: .constant(true))
        
            
                
            
            //Add toDoItems: .constant([]) here (Iteration 1)
    
            //Add showNewTask: .constant(true) (Iteration 1)
            //Delete toDoItems: .constant([]) (Iteration 2_


        
    }
    
}
