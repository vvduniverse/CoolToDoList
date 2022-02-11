//
//  ContentView.swift
//  CoolToDoList
//
//  Created by Vahtee Boo on 11.02.2022.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var dataStore: DataStore
    @State private var modelType: ModalType? = nil
    
    var body: some View {
        NavigationView {
            List() {
                ForEach(dataStore.toDos) { toDo in
                    Button {
                        modelType = .update(toDo)
                    } label: {
                        Text(toDo.name)
                            .font(.title3)
                            .strikethrough(toDo.completed)
                            .foregroundColor(toDo.completed ? .green : Color(.label))
                    }
                }
                .onDelete(perform: dataStore.deleteToDo)
            }
            .listStyle(InsetGroupedListStyle())
            .toolbar {
                ToolbarItem(placement: .principal) {
                    Text("My ToDos")
                        .font(.largeTitle)
                        .foregroundColor(.red)
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        modelType = .new
                    } label: {
                        Image(systemName: "plus.circle.fill")
                    }
                }
            }
        }
        .sheet(item: $modelType) { $0 }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(DataStore())
    }
}
