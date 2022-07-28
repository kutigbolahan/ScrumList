//
//  DetailEditView.swift
//  Scrumlist
//
//  Created by GB on 7/28/22.
//

import SwiftUI

struct DetailEditView: View {
    @State private var data = DailyScrum.Data()
    @State private var newAttendeeName = ""
    var body: some View {
        Form{
            Section(header: Text("Meeting Info")){
                TextField("Title", text: $data.title)
                HStack{
                    Slider(value: $data.lengthInMinutes,in: 5...30, step: 1){
                        Text("Length")
                    }
                    Spacer()
                    Text("\(Int(data.lengthInMinutes)) minutes")
                }
                
            }
            Section(header: Text("Attendees")){
                ForEach(data.attendees){
                    attendee in
                    Text(attendee.name)
                }.onDelete{ indices in
                    data.attendees.remove(atOffsets: indices)
                    
                }
                HStack{
                    TextField("New Attendee", text: $newAttendeeName)
                    Button( action:{
                        withAnimation{
                            let attendee = DailyScrum.Attendee(name: newAttendeeName)
                            data.attendees.append(attendee)
                        }
                    }){
                    Image(systemName: "plus.circle.fill")
                    }
                }
            }
        }
    }
}

struct DetailEditView_Previews: PreviewProvider {
    static var previews: some View {
        DetailEditView()
    }
}