//
//  Mission.swift
//  MoonShot
//
//  Created by Cumali Han Ünlü on 4.02.2020.
//  Copyright © 2020 Cumali Han Ünlü. All rights reserved.
//

import Foundation

struct Mission: Codable,Identifiable{
    
    
    struct CrewRole:Codable{
        let name: String
        let role: String   
    }
    
    let id: Int
    let launchDate: Date?
    let crew: [CrewRole]
    let description: String
    
    
    var displayName: String{
        "Apollo \(id)"
    }
    var image: String {
        "apollo \(id)"
    }
    
    var formatterLaunchDate: String {
        if let launchDate = launchDate {
            let formatter = DateFormatter()
            formatter.dateStyle = .long
            
            return formatter.string(from: launchDate)
        }else {
            return "N/A"
        }
    }
}
