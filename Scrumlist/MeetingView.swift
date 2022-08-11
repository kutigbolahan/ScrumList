//
//  ContentView.swift
//  Scrumlist
//
//  Created by GB on 7/26/22.
//

import SwiftUI

struct MeetingView: View {
    @Binding var scrum: DailyScrum
    @StateObject var scrumTimer = ScrumTimer()
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 16.0).fill(scrum.theme.mainColor)
            VStack {
               
                Circle().strokeBorder(lineWidth:24)
                HStack{
                    Text("speaker 1 0f 3")
                    Spacer()
                    Button(action: {} ){
                        Image(systemName: "forward.fill")
                    }
                    .accessibilityLabel("Next speaker")
                }
            }
        }.padding().foregroundColor(scrum.theme.accentColor).navigationBarTitleDisplayMode(.inline)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MeetingView(scrum: .constant(DailyScrum.sampleData[0]))
    }
}
