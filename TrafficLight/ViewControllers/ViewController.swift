//
//  ViewController.swift
//  TrafficLight
//
//  Created by Alexey on 07.03.2022.
//

import UIKit

enum CurrentLight {
    case red, yellow, green
}

class ViewController: UIViewController {

    @IBOutlet weak var redLightView: UIView!
    @IBOutlet weak var yellowLightView: UIView!
    @IBOutlet weak var greenLightView: UIView!
    
    @IBOutlet weak var changingLightButton: UIButton!
    
    private var currentLight = CurrentLight.red
    private let lightIsOn: CGFloat = 1
    private let lightIsOff: CGFloat = 0.3
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redLightView.backgroundColor = .systemRed
        redLightView.alpha = lightIsOff
        
        yellowLightView.backgroundColor = .systemYellow
        yellowLightView.alpha = lightIsOff
        
        greenLightView.backgroundColor = .systemGreen
        greenLightView.alpha = lightIsOff
        
        changingLightButton.backgroundColor = .secondarySystemBackground
        changingLightButton.tintColor = .gray
        changingLightButton.layer.cornerRadius = 15
        changingLightButton.setTitle("START", for: .normal)
        changingLightButton.setTitleColor(.white, for: .normal)
    }
    
    override func viewWillLayoutSubviews() {
        redLightView.layer.cornerRadius = redLightView.frame.width / 2
        yellowLightView.layer.cornerRadius = redLightView.frame.width / 2
        greenLightView.layer.cornerRadius = redLightView.frame.width / 2
    }

    @IBAction func changingLightButtonTapped() {
        if changingLightButton.currentTitle == "START" {
            changingLightButton.setTitle("NEXT", for: .normal)
        }
        
        switch currentLight {
        case .red:
            greenLightView.alpha = lightIsOff
            redLightView.alpha = lightIsOn
            currentLight = .yellow
        case .yellow:
            redLightView.alpha = lightIsOff
            yellowLightView.alpha = lightIsOn
            currentLight = .green
        case .green:
            yellowLightView.alpha = lightIsOff
            greenLightView.alpha = lightIsOn
            currentLight = .red
        }
    }
}
