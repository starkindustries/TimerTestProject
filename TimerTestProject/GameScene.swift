//
//  GameScene.swift
//  TimerTestProject
//
//  Created by Zion Perez on 4/3/17.
//  Copyright © 2017 Zion Perez. All rights reserved.
//

import Foundation

class GameScene {
    
    weak var delegate: GameSceneDelegate?
    var timer: Timer = Timer()
    var counter: Int = 0
    
    //- (void)timerFireMethod:(NSTimer *)timer
    // https://developer.apple.com/reference/foundation/timer/1412416-scheduledtimer
    @objc func timer​Fire​Method(_ timer: Timer) {
        print("timer!")
    }
    
    @objc func updateCounting(){
        let text = "Updating count: \(counter)"
        delegate?.updateTimerLabel(text: text)
        print("Updating count: \(counter)")
        counter += 1
    }
    
    func updateTimer() {
        timer = Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(updateCounting), userInfo: nil, repeats: true)
        
        // timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(timer​Fire​Method(_:)), userInfo: nil, repeats: true)
    }
}


