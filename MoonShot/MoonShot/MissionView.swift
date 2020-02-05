//
//  MissionView.swift
//  MoonShot
//
//  Created by Cumali Han Ünlü on 5.02.2020.
//  Copyright © 2020 Cumali Han Ünlü. All rights reserved.
//

import SwiftUI

struct MissionView: View {
    let mission: Mission
    var body: some View {
        GeometryReader { geometry in
            ScrollView(.vertical) {
                VStack {
                    Image(self.mission.Image)
                    .resizable
                    .scaledToFit()
                   
                    
                }
            }
            
        }
    }
}

struct MissionView_Previews: PreviewProvider {
    static var previews: some View {
        MissionView()
    }
}
