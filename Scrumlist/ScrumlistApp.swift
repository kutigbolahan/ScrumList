//
//  ScrumlistApp.swift
//  Scrumlist
//
//  Created by GB on 7/26/22.
//

import SwiftUI

@main
struct ScrumlistApp: App {
    @State private var scrums = DailyScrum.sampleData
    var body: some Scene {
        WindowGroup {
            NavigationView{
                ScrumView(scrums:$scrums)
            }
          
        }
    }
}
