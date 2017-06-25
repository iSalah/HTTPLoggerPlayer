//
//  ViewController.swift
//  HTTPLoggerPlayer
//
//  Created by Salah on 2017-06-26.
//  Copyright © 2017 DevSK. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    var player: AVPlayer?
    let streamURL = "https://wowza-cloudfront.streamroot.io/liveorigin/stream4/playlist.m3u8"
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        setupPlayer()
    }
    
    private func setupPlayer() {
        guard let url = URL(string: self.streamURL) else { return }
        
        self.player = AVPlayer(url: url)
        let playerLayer = AVPlayerLayer(player: self.player)
        playerLayer.frame = self.view.bounds
        self.view.layer.addSublayer(playerLayer)
        self.player!.play()
    }
}

