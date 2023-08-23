//
//  ContentView.swift
//  PlayerViewController-Sample
//
//  Created by Gianpiero Spinelli on 23/08/23.
//

import SwiftUI
import AVKit

struct ContentView: UIViewControllerRepresentable {
  
  var url: String = "https://devstreaming-cdn.apple.com/videos/streaming/examples/bipbop_adv_example_hevc/master.m3u8"
  
  func makeUIViewController(context: Context) -> AVPlayerViewController {
    let controller = AVPlayerViewController()
    controller.navigationItem.hidesBackButton = true
    controller.showsPlaybackControls = false

    controller.player = AVPlayer(url: URL(string: url)!)
    controller.player?.playImmediately(atRate: 1.0)
    
    return controller
  }
  
  func updateUIViewController(_ uiViewController: AVPlayerViewController, context: Context) {
    
  }
}
