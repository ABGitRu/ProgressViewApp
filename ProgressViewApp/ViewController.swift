//
//  ViewController.swift
//  ProgressViewApp
//
//  Created by Mac on 04.04.2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var progressView: UIProgressView!
    @IBOutlet var screenView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        screenView.layer.cornerRadius = 20
        screenView.isHidden = true
        
        progressView.progressTintColor = #colorLiteral(red: 0.7254902124, green: 0.4784313738, blue: 0.09803921729, alpha: 1)
        progressView.progress = 0
        
        Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { _ in
            if self.progressView.progress < 1 {
                self.progressView.progress += 0.2
            } else {
                self.progressView.isHidden = true
                self.screenView.isHidden = false
            }
        }
    }
    
    


}

