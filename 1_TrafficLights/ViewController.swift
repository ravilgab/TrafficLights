//
//  ViewController.swift
//  1_TrafficLights
//
//  Created by Ravil on 18.08.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var redLightView: UIView!
    @IBOutlet weak var yellowLightView: UIView!
    @IBOutlet weak var greenLightView: UIView!
    
    @IBOutlet weak var colorSwitchButton: UIButton!
    
    var brightLight: CGFloat = 1
    var dimLight: CGFloat = 0.2
    
    var currentColor = "red"
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redLightView.layer.backgroundColor = #colorLiteral(red: 1, green: 0.0187217119, blue: 0, alpha: 1)
        yellowLightView.layer.backgroundColor = #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)
        greenLightView.layer.backgroundColor = #colorLiteral(red: 0.2745098174, green: 0.4862745106, blue: 0.1411764771, alpha: 1)

        redLightView.alpha = dimLight
        yellowLightView.alpha = dimLight
        greenLightView.alpha = dimLight

        colorSwitchButton.layer.cornerRadius = 10
    }
    
    override func viewWillLayoutSubviews() {
        redLightView.layer.cornerRadius = redLightView.frame.height / 2
        yellowLightView.layer.cornerRadius = yellowLightView.frame.height / 2
        greenLightView.layer.cornerRadius = greenLightView.frame.height / 2
    }
    
    
    
    
    
    @IBAction func colorSwitchButtonPressed(_ sender: UIButton) {
        colorSwitchButton.setTitle("Next", for: .normal)
        
        switch currentColor {
        case "red":
            redLightView.alpha = brightLight
            greenLightView.alpha = dimLight
            currentColor = "yellow"
        case "yellow":
            yellowLightView.alpha = brightLight
            redLightView.alpha = dimLight
            currentColor = "green"
        case "green":
            greenLightView.alpha = brightLight
            yellowLightView.alpha = dimLight
            currentColor = "red"
        default:
            break
        }
        
    }
    
}

