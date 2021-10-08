//
//  ViewController.swift
//  Traffic Lights App
//
//  Created by Александр Женухин on 07.10.2021.
//

import UIKit

class TrafficLightViewController: UIViewController {
    
    enum Lights {
        case red, yellow, green
    }
    
    private var currentLight = Lights.red

    @IBOutlet var redLightView: UIView!
    @IBOutlet var yellowLightView: UIView!
    @IBOutlet var greenLightView: UIView!
    @IBOutlet var startButton: UIButton!
    
    override func viewWillLayoutSubviews() {
        redLightView.layer.cornerRadius = redLightView.frame.width / 2
        yellowLightView.layer.cornerRadius = yellowLightView.frame.width / 2
        greenLightView.layer.cornerRadius = greenLightView.frame.width / 2
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redLightView.alpha = 0.3
        yellowLightView.alpha = 0.3
        greenLightView.alpha = 0.3
    }
    
    @IBAction func startButtonPressed() {
        startButton.setTitle("Next", for: .normal)
        switch currentLight {
        case .red:
            greenLightView.alpha = 0.3
            redLightView.alpha = 1
            currentLight = .yellow
        case .yellow:
            redLightView.alpha = 0.3
            yellowLightView.alpha = 1
            currentLight = .green
        case .green:
            yellowLightView.alpha = 0.3
            greenLightView.alpha = 1
            currentLight = .red
        }
    }
    
}

