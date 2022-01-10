//
//  ViewController.swift
//  UISlider
//
//  Created by Ярослав on 07.01.2022.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    //outlet
    
    @IBOutlet weak var VolumeOutlet: UISlider!
    
    
    var player = AVAudioPlayer()
    let slider = UISlider()
    override func viewDidLoad() {
        super.viewDidLoad()
        
     
        
        
        //slider
        self.slider.frame = CGRect(x: 0, y: 0, width: 200, height: 25)
        self.slider.center = self.view.center
        self.slider.minimumValue = 0.0
        self.slider.maximumValue = 100.0
        self.view.addSubview(slider)
        
        //add target
        self.slider.addTarget(self, action: #selector(changeSlider), for: .valueChanged)
        
        do {
            if let audioPath = Bundle.main.path(forResource: "cyka", ofType: "mp3") {
            try player = AVAudioPlayer(contentsOf: URL(fileURLWithPath: audioPath))
                self.slider.maximumValue = Float(player.duration)
            }
        } catch {
            print ("error")
        }
        
        self.player.play()
    }
    
    @objc func changeSlider(sender : UISlider) {
        if sender == slider {
            self.player.currentTime = TimeInterval(sender.value)
        }
    }

    @IBAction func PlayButton(_ sender: Any) {
        self.player.play()
    }
    
    @IBAction func PauseButton(_ sender: Any) {
        self.player.pause()
    }
    
    
    
    @IBAction func VolumeAction(_ sender: Any) {
        self.player.volume = self.VolumeOutlet.value
    }
    
    
}

