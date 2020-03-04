//
//  MissionView.swift
//  MoonShot
//
//  Created by Cumali Han Ünlü on 5.02.2020.
//  Copyright © 2020 Cumali Han Ünlü. All rights reserved.
//

import SwiftUI




struct MissionView: View {
    
    struct CrewMember {
           let role: String
           let astronaut: Astronaut
       }
    
    
    let mission: Mission
    let astronauts: [CrewMember]
    
    
    var body: some View {
        GeometryReader { geometry in
            ScrollView(.vertical) {
                VStack {
                    Image(self.mission.image)
                        .resizable()
                        .scaledToFit()
                        .frame(maxWidth: geometry.size.width * 0.7)
                        .padding(.top)
                    Text(self.mission.description)
                        .padding()
                    ForEach(self.astronauts, id: \.role) {
                        crewMember in
                        HStack {
                            Image(crewMember.astronaut.id)
                            .resizable()
                            .frame(width: 83, height: 60)
                            .clipShape(Capsule())
                            
                            .overlay(Capsule())
                            
                            VStack(alignment: .leading){
                                Text(crewMember.ast)
                            }
                            
                        }
                    }
                    Spacer(minLength: 25)
                    
                    
                    
                }
            }
            
        }
        .navigationBarTitle(Text(mission.displayName),displayMode: .inline)
    }
    
    init(mission: Mission,astronauts: [Astronaut]){
        self.mission = mission
        
        var matches = [CrewMember]()
        
        for member in mission.crew {
            if let match = astronauts.first(where : {
                $0.id == member.name
            }) {
                matches.append(CrewMember(role: member.role, astronaut:  match))
            } else {
                fatalError("Missing \(member)")
            }
        }
        self.astronauts = matches
    }
}

struct MissionView_Previews: PreviewProvider {
    static let astronauts: [Astronaut] = Bundle.main.decode("astronauts.json")
    static let missions: [Mission] = Bundle.main.decode("missions.json")
    static var previews: some View {
        
        MissionView(mission: missions[0], astronauts: astronauts)
    }
}
