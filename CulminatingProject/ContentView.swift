//
//  ContentView.swift
//  CulminatingProject
//
//  Created by Mateo Elosua on 2022-05-08.
//
// note.text
// clock
import SwiftUI

struct ContentView: View {
    @Environment(\.scenePhase) var scenePhase
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
        .onChange(of: scenePhase) { newPhase in
            if newPhase == .background {
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
