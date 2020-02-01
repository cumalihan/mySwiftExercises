//
//  TimerManager.swift
//  TimerApp
//
//  Created by Cumali Han Ünlü on 1.02.2020.
//  Copyright © 2020 Cumali Han Ünlü. All rights reserved.
//

import Foundation
import SwiftUI

class TimerManager: ObservableObject{
     @Published var secondsLeft = 60
     @Published var timerMode: TimerMode = .initial
 
    var timer = Timer()
    
    func start(){
        timerMode = .running
        timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true, block:{
            timer in
            if self.secondsLeft == 0 {
                self.timerMode = .initial
                self.secondsLeft = 60
                timer.invalidate()
            }
            self.secondsLeft -= 1 
        })
        
    }
    func reset(){
        self.timerMode = .initial
        self.secondsLeft = 60
        timer.invalidate()
        
        if self.secondsLeft == 0{
               self.reset()
           }
    }
    func pause(){
        self.timerMode = .paused
    }
    
   
    
}
