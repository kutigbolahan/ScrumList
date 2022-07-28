//
//  ThemePicker.swift
//  Scrumlist
//
//  Created by GB on 7/28/22.
//

import SwiftUI

struct ThemePicker: View {
    @Binding var selection: Theme
    var body: some View {
        Picker("Theme", selection: $selection){
            
        }
    }
}

struct ThemePicker_Previews: PreviewProvider {
    static var previews: some View {
        ThemePicker(selection: .constant(.periwinkle))
    }
}
