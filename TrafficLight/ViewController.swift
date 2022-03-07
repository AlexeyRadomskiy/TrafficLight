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
   
    override func viewWillLayoutSubviews() {
        redLightView.layer.cornerRadius = redLightView.frame.width / 2
        yellowLightView.layer.cornerRadius = redLightView.frame.width / 2
        greenLightView.layer.cornerRadius = redLightView.frame.width / 2
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redLightView.backgroundColor = .systemRed
        redLightView.alpha = 0.3
        
        yellowLightView.backgroundColor = .systemYellow
        yellowLightView.alpha = 0.3
        
        greenLightView.backgroundColor = .systemGreen
        greenLightView.alpha = 0.3
        
        changingLightButton.backgroundColor = .secondarySystemBackground
        changingLightButton.tintColor = .gray
        changingLightButton.layer.cornerRadius = 15
        changingLightButton.setTitle("START", for: .normal)
        changingLightButton.setTitleColor(.white, for: .normal)
    }

    @IBAction func changingLightButtonTapped() {
        if changingLightButton.currentTitle == "START" {
            changingLightButton.setTitle("NEXT", for: .normal)
        }
        
        switch currentLight {
        case .red:
            greenLightView.alpha = 0.3
            redLightView.alpha = 1.0
            currentLight = .yellow
        case .yellow:
            redLightView.alpha = 0.3
            yellowLightView.alpha = 1.0
            currentLight = .green
        case .green:
            yellowLightView.alpha = 0.3
            greenLightView.alpha = 1.0
            currentLight = .red
        }
    }
}
