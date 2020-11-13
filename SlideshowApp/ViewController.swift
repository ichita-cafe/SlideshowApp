//
//  ViewController.swift
//  SlideshowApp
//
//  Created by 三浦一太 on 2020/11/08.
//  Copyright © 2020 ichita.miura. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var imageView: UIImageView!
    
    
    @IBOutlet weak var startButtton: UIButton!
    
    @IBOutlet weak var backOutlet: UIButton!
    
    @IBOutlet weak var nextOutlet: UIButton!
    
    
    
    
    var nowIndex:Int = 0
    
    var timer: Timer!
    
    var images:[UIImage] = [
        UIImage(named: "angel-luciano-LATYeZyw88c-unsplash.jpg")!,
        UIImage(named: "alvan-nee-eoqnr8ikwFE-unsplash.jpg")!,
        UIImage(named: "alvan-nee-T-0EW-SEbsE-unsplash.jpg")!,
        UIImage(named: "josephine-amalie-paysen--XW35nYkRnk-unsplash.jpg")!,
        UIImage(named: "lui-peng-ybHtKz5He9Y-unsplash.jpg")!,
        
    ]
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let zoomupViewController:ZoomupViewController = segue.destination as! ZoomupViewController
        
        
        zoomupViewController.kakudai = images[self.nowIndex]
        
        
        if self.timer != nil  {
            
            timer.invalidate()
            
            timer = nil
            
            startButtton.setTitle("再生", for: .normal)
            
            backOutlet.isEnabled = true
            
            nextOutlet.isEnabled = true
            
        }
        
        
    }
    
    
    
    
    override func viewDidLoad() {
        
        imageView.image = images[self.nowIndex]
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func slde(_ sender: Any) {
        
        if self.timer == nil {
            timer = Timer.scheduledTimer(timeInterval: 2.0, target: self, selector: #selector(timerset), userInfo:nil, repeats: true)
            
            startButtton.setTitle("停止", for: .normal)
            
            backOutlet.isEnabled = false
            
            nextOutlet.isEnabled = false
            
        } else {
            
            timer.invalidate()
            
            timer = nil
            
            startButtton.setTitle("再生", for: .normal)
            
            backOutlet.isEnabled = true
            
            nextOutlet.isEnabled = true
            
        }
        
        
    }
    
    
    @IBAction func back(_ sender: Any) {
        
        if self.nowIndex == 0 {
            
            self.nowIndex += images.count-1
            
            
            
        } else {
            self.nowIndex -= 1
            
            //imageView.image = images[nowIndex]
            
            
        }
        
        imageView.image = images[self.nowIndex]
        
    }
    
    
    @IBAction func next(_ sender: Any) {
        
        
        
        if self.nowIndex == images.count-1 {
            
            self.nowIndex = 0
            
            //imageView.image = images[nowIndex]
            
        } else {
            
            
            self.nowIndex += 1
            //imageView.image = images[nowIndex]
            
        }
        
        imageView.image = images[self.nowIndex]
    }
    
    @objc func timerset() {
        
        self.nowIndex += 1
        
        if self.nowIndex  == images.count {
            
            self.nowIndex = 0
            
            
        }
        
        
        imageView.image = images[nowIndex]
        
        
        
        
    }
    
    //@IBAction func unwind(_ segue: UIStoryboardSegue) {
    
    @IBAction func unwind(_ segue: UIStoryboardSegue) {
        
    }
    
}
