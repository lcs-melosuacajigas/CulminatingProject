//
//  TimeView.swift
//  CulminatingProject
//
//  Created by Mateo Elosua on 2022-05-08.
//
import SwiftUI

struct TimeView: View {
    
    // MARK: Stored properties
    @State var selectedDateAndTime = Date()
    
    // MARK: Computed properties
    
    
    // ADAPTED FROM: https://stackoverflow.com/a/42626860
    var dateAndTimeOfNextHour: Date {
        
        
        let now = Date()
        
        let calendar = Calendar.current
        let hour = calendar.component(.hour, from: now)
        
     
        let newDate = calendar.date(bySettingHour: hour,
                                    minute: 0,
                                    second: 0,
                                    of: now)!
        return newDate
    }
    

    var formattedDateAndTime: String {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        formatter.timeStyle = .short
        formatter.doesRelativeDateFormatting = true
        
        return formatter.string(from: selectedDateAndTime)
    }
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                
                
                
                Divider()
                    .padding(.vertical, 20)
                
                Text("The selected date and time is:")
                    .bold()
                    .padding(.vertical)
                
                Text(formattedDateAndTime)
                
                
                DatePicker("",
                           selection: $selectedDateAndTime,
                           in: dateAndTimeOfNextHour...)
                .datePickerStyle(.graphical)
                
                Divider()
                    .padding(.vertical, 20)
                                
               
                DatePicker("",
                           selection: $selectedDateAndTime,
                           in: dateAndTimeOfNextHour...)
                .datePickerStyle(.compact)
                
            }
        }
        .padding(.horizontal)
        
        .task {
            selectedDateAndTime = dateAndTimeOfNextHour
        }
    }
}

struct DatePickerExample_Previews: PreviewProvider {
    static var previews: some View {
        TimeView()
    }
}
