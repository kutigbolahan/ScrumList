//
//  DetailView.swift
//  Scrumlist
//
//  Created by GB on 7/27/22.
//

import SwiftUI

struct DetailView: View {
    let scrum: DailyScrum
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            DetailView(scrum: DailyScrum.sampleData[0])
        }
      
    }
}
