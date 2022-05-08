//
//  ContentView.swift
//  CulminatingProject
//
//  Created by Mateo Elosua on 2022-05-08.
//

import SwiftUI

struct ContentView: View {
    @State var taskList = ["", "Wash dishes"]
    @State var input = ""
    var body: some View {
        VStack {
            TextField("New task", text: $input)
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
