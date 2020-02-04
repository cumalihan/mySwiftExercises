//
//  ContentView.swift
//  MoonShot
//
//  Created by Cumali Han Ünlü on 3.02.2020.
//  Copyright © 2020 Cumali Han Ünlü. All rights reserved.
//

import SwiftUI



struct ContentView: View {
    let astronauts = Bundle.main.decode("astronauts.json")
    var body: some View {
            Text("Hello World")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
