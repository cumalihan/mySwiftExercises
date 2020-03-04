//
//  Weathear.swift
//  MalatyaHavaDurumu
//
//  Created by Cumali Han on 1.12.2018.
//  Copyright © 2018 Cumali Han. All rights reserved.
//

import Foundation

struct  WeatherData:Codable {
    var currently : Currently
    
    struct Currently:Codable {
        
        var summary:String
        
        var apparentTemperature:Double
        
        var tempCelcius:String{
            let celcius = String(((apparentTemperature-32)*5/9).sayiyiYuvarla(basamak: 2))
            return celcius
        }
    }
}
extension Double{
    func  sayiyiYuvarla(basamak:Int) -> Double {
        let carpan = pow(10.0,Double(basamak))
        
        return (self*carpan).rounded()/carpan
    }
}
