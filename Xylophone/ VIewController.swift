//
//  ViewController.swift
//  Xylophone
//
//  Created by Vanessa Latefa Pamppilo.
//  Copyright © 2016 London App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController, AVAudioPlayerDelegate{
    
    var audioPlayer : AVAudioPlayer!
    let soundArray = ["note1", "note2", "note3", "note4", "note5", "note6", "note7"]
    var selectedFileName :  String = " "
    override func viewDidLoad() {
        super.viewDidLoad()
    }



    @IBAction func notePressed(_ sender: UIButton) {
       
        selectedFileName  = soundArray[sender.tag-1]
        
        playSound()
        
    }
    
    func playSound(){
        let soundURL = Bundle.main.url(forResource: selectedFileName, withExtension: "wav")
        
        do{
            try audioPlayer = AVAudioPlayer (contentsOf: soundURL!)
        }catch{
            print(error)
        }
        audioPlayer.play()
        
    }
    
  

}

