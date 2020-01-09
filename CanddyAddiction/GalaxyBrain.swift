//
//  GalaxyBrain.swift
//  CanddyAddiction
//
//  Created by mosahaq on 12/12/19.
//  Copyright © 2019 mosahaq. All rights reserved.
//

import UIKit
import AVFoundation

class GalaxyBrain: UIViewController
{
    var musicEffect: AVAudioPlayer = AVAudioPlayer()

    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let musicFile = Bundle.main.path(forResource: "Captive_Portal_-_04_-_A_Candy_Addiction (1)", ofType: ".mp3")
        do
        {
            try musicEffect = AVAudioPlayer(contentsOf: URL (fileURLWithPath: musicFile!))
        }
        catch
        {
            print(error)
        }
    }

    @IBAction func PlayButton(_ sender: Any)
    {
        musicEffect.play()
    }
    
    @IBAction func StopButton(_ sender: Any)
    {
        musicEffect.stop()
    }
}
