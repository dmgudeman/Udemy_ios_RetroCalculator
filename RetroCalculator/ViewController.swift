//
//  ViewController.swift
//  RetroCalculator
//
//  Created by David Gudeman on 8/10/17.
//  Copyright © 2017 dmgudeman. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
  
  var btnSound: AVAudioPlayer!

  override func viewDidLoad() {
    super.viewDidLoad()
    let path = Bundle.main.path(forResource: "btn", ofType: "wav")
    let soundURL = URL(fileURLWithPath: path!)
    
    do {
      try btnSound = AVAudioPlayer(contentsOf: soundURL)
      btnSound.prepareToPlay()
    }catch let err as NSError {
      print(err.debugDescription)
      
    }
    
    }
  
  @IBAction func numberPress(sender: UIButton){
    playSound()
  }
  func playSound() {
    if btnSound.isPlaying {
      btnSound.stop()
    }
    btnSound.play()
  }

  


}

