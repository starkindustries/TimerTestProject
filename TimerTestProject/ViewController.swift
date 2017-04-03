//
//  ViewController.swift
//  TimerTestProject
//
//  Created by Zion Perez on 4/3/17.
//  Copyright © 2017 Zion Perez. All rights reserved.
//

import UIKit

class ViewController: UIViewController, GameSceneDelegate {

    @IBOutlet weak var timerLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let game = GameScene()
        game.delegate = self
        game.updateTimer()
    }
    
    func updateTimerLabel(text: String) {
        timerLabel.text = text
    }
}

protocol GameSceneDelegate: class{
    func updateTimerLabel(text: String)
}
