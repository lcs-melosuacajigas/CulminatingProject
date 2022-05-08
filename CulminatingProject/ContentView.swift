//
//  ContentView.swift
//  CulminatingProject
//
//  Created by Mateo Elosua on 2022-05-08.
//

import SwiftUI

struct ContentView: View {
    @State var taskList : [String] = []
    @State var input = ""
    var body: some View {
        VStack {
            HStack {
                TextField("New task", text: $input)
                Button(action: {
                    taskList.append(input)
                    input = ""
                }, label: {Text("Save")})
            }
            
            List {
                ForEach(taskList, id: \.self) { currentItem in
                    Text(currentItem)
                    
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
