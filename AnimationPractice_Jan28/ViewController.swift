//
//  ViewController.swift
//  AnimationPractice_Jan28
//
//  Created by Elizabeth Peraza  on 1/28/19.
//  Copyright © 2019 Elizabeth Peraza . All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  @IBOutlet weak var duck: UIImageView!
  
  
  @IBOutlet weak var imageToChange: UIButton!
  
  @IBOutlet weak var labelToChange: UILabel!
  
  private var animator: UIViewPropertyAnimator!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    animator = UIViewPropertyAnimator(duration: 1.0, curve: .easeOut, animations: {
      self.duck.transform = CGAffineTransform(scaleX: 10.0, y: 10.0)
    })
    
  }
  
  @IBAction func sliderChanged(_ sender: UISlider) {
    
    animator.fractionComplete = CGFloat(sender.value)
  }
  
  
  @IBAction func changeImageNow(_ sender: UIButton) {
    if imageToChange.imageView?.image == UIImage(named: "ball-disco") {
      UIView.transition(with: imageToChange, duration: 1.0, options: [.transitionFlipFromTop], animations: {
        self.imageToChange.setImage(UIImage(named: "ballons-gray"), for: .normal)
        self.labelToChange.text = "Balloons!"
      })
    } else {
      if imageToChange.imageView?.image == UIImage(named: "ball-disco") {
        
        UIView.transition(with: imageToChange, duration: 1.0, options: [.transitionCurlDown], animations: {
          self.imageToChange.setImage((UIImage(named: "ball-disco")), for: .normal)
          self.labelToChange.text = "Let's dance!"
        })
      }
      
    }
    
  }
  
  
  
}

