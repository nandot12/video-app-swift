//
//  ViewController.swift
//  video app
//
//  Created by Nando Septian Husni on 3/7/18.
//  Copyright © 2018 imastudio. All rights reserved.
//

import UIKit
//untuk nmpilin video
import AVKit
//untuk audio
import AVFoundation

class ViewController: UIViewController {
   
    var player : AVPlayer? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    
        //sumber video
        let video = Bundle.main.path(forResource: "video", ofType:"mp4")
        
        player = AVPlayer(url: URL(fileURLWithPath: video!))
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func play(_ sender: Any) {
        let playvideo = AVPlayerViewController()
        playvideo.player = player
        present(playvideo, animated: true) {
            self.player?.play()
            
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

