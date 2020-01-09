//
//  NaturalSound.swift
//  CanddyAddiction
//
//  Created by mosahaq on 12/12/19.
//  Copyright © 2019 mosahaq. All rights reserved.
//

import UIKit
import AVFoundation

class NaturalSound: UIViewController
{
    var musicEffect: AVAudioPlayer = AVAudioPlayer()

    override func viewDidLoad()
    {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let musicFile = Bundle.main.path(forResource: "InnerPeace", ofType: ".mp3")
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
            self.view.backgroundColor = UIColor(displayP3Red: 27/255, green: 46/255, blue: 47/255, alpha: 1)
        }, completion: nil)
        
        musicEffect.play()
    }
    
    @IBAction func StopButton(_ sender: Any)
    {
        UIView.animate(withDuration: 1, animations:
        {
            self.view.backgroundColor = UIColor(displayP3Red: 116/255, green: 195/255, blue: 199/255, alpha: 1)
        }, completion: nil)
        musicEffect.stop()
    }
}
