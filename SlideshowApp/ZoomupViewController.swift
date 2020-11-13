//
//  ZoomupViewController.swift
//  SlideshowApp
//
//  Created by 三浦一太 on 2020/11/11.
//  Copyright © 2020 ichita.miura. All rights reserved.
//

import UIKit

class ZoomupViewController: UIViewController {
    
    
    
    @IBOutlet weak var zoomView: UIImageView!
    
    
    var kakudai:UIImage!
    
    
    
    
    
    
    
    

    override func viewDidLoad() {
        
        zoomView.image = kakudai
        super.viewDidLoad()
    }
        // Do any additional setup after loading the view.
 
 


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
