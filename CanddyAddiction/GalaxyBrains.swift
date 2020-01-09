//
//  GalaxyBrains.swift
//  CanddyAddiction
//
//  Created by mosahaq on 12/12/19.
//  Copyright © 2019 mosahaq. All rights reserved.
//

import UIKit
import AVFoundation

class GalaxyBrains: UIViewController
{
    var musicEffect: AVAudioPlayer = AVAudioPlayer()

    override func viewDidLoad()
    {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let musicFile = Bundle.main.path(forResource: "GameCube", ofType: ".mp3")
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
        UIView.animate(withDuration: 1, animations:
        {
            self.view.backgroundColor = UIColor(displayP3Red: 37/255, green: 25/255, blue: 50/255, alpha: 1)
        }, completion: nil)
        
        musicEffect.play()
    }
    
    @IBAction func StopButton(_ sender: Any)
    {
        UIView.animate(withDuration: 1, animations:
        {
            self.view.backgroundColor = UIColor(displayP3Red: 162/255, green: 104/255, blue: 216/255, alpha: 1)
        }, completion: nil)
        
        musicEffect.stop()
    }
}
