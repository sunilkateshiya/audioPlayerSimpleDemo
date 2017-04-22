//
//  ViewController.swift
//  audioPlayer
//
//  Created by iFlame on 4/22/17.
//  Copyright © 2017 iFlame. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player:AVAudioPlayer=AVAudioPlayer()

    @IBAction func play(_ sender: Any)
    {
        player.play()
    }
    
    @IBAction func pause(_ sender: Any)
    {
        player.pause()
    }
    
    @IBAction func replay(_ sender: Any)
    {
        player.currentTime = 0
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        do{
            let audiopath = Bundle.main.path(forResource: "Song", ofType: "mp3")
            try player = AVAudioPlayer(contentsOf:NSURL(fileURLWithPath: audiopath!) as URL)
            
          }
        catch
        {
            
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

