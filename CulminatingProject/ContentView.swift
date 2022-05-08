//
//  ContentView.swift
//  CulminatingProject
//
//  Created by Mateo Elosua on 2022-05-08.
//

import SwiftUI

struct ContentView: View {
    @State var taskList = [
    "English essay",
    "Wash dishes"
    ]
    var body: some View {
        VStack {
            Text("New Task")
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
