//
//  ViewController.swift
//  TConvector
//
//  Created by Анна Иванова on 16.04.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var cenliusLabel: UILabel!
    @IBOutlet weak var fahrenheitLabel: UILabel!
    @IBOutlet weak var slider: UISlider! {
        didSet {
            slider.maximumValue = 100
            slider.minimumValue = 0
            slider.value = 0
        }
    }
    
    @IBAction func sliderChanges(_ sender: UISlider) {
        
//        round - округление. в этом случае можно и без него)
        let temperatureCelsium = Int(round(sender.value))
        cenliusLabel.text = "\(temperatureCelsium)ºC"
        
        let temperatureFahrenheit = Int((sender.value * 9 / 5) + 32)
        fahrenheitLabel.text = "\(temperatureFahrenheit)ºF"
        
    }
    
    
    
    
    
}

