//
//  ViewController.swift
//  MalatyaHavaDurumu
//
//  Created by Cumali Han on 1.12.2018.
//  Copyright © 2018 Cumali Han. All rights reserved.
//

import UIKit

let myStringUrl = "https://api.darksky.net/forecast/da52ba3d2d7bdd86874755baddbdaa89/38.3483,38.3179?lang=tr"
let url = URL(string:myStringUrl)
let myData = try! Data(contentsOf:url!)

let jsonDecoder = JSONDecoder()
class ViewController: UIViewController {
    @IBOutlet weak var summary: UILabel!
    @IBOutlet weak var temp: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        let result = try? jsonDecoder.decode(WeatherData.self, from: myData)
        if let havaDurumu = result?.currently{
            summary.text = havaDurumu.summary
            temp.text = havaDurumu.tempCelcius
            
        }
       
    }


}

