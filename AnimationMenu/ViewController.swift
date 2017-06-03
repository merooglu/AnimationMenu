//
//  ViewController.swift
//  AnimationMenu
//
//  Created by Mehmet Eroğlu on 3.06.2017.
//  Copyright © 2017 Mehmet Eroğlu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var menuView: UIView!
    @IBOutlet weak var darkFillView: UIViewX!
    @IBOutlet weak var toggleMenuButton: UIButton!
    
    @IBOutlet weak var fbButton: UIButtonX!
    @IBOutlet weak var twitterButton: UIButtonX!
    @IBOutlet weak var googleButton: UIButtonX!
    @IBOutlet weak var whatsupButton: UIButtonX!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        fbButton.alpha = 0
        twitterButton.alpha = 0
        googleButton.alpha = 0
        whatsupButton.alpha = 0
    }

   
    @IBAction func toggleMenu(_ sender: UIButton) {
        
        if darkFillView.transform == CGAffineTransform.identity {
            UIView.animate(withDuration: 1, animations: {
                self.darkFillView.transform = CGAffineTransform(scaleX: 11, y: 11)
                self.menuView.transform = CGAffineTransform(translationX: 0, y: -67)
                self.toggleMenuButton.transform = CGAffineTransform(rotationAngle: self.radians(180))
            }) { (true) in
                
                UIView.animate(withDuration: 0.5, animations: { 
                    self.toggleSharedButton()
                })
            }
        }else {
            UIView.animate(withDuration: 1, animations: {
                self.darkFillView.transform = CGAffineTransform.identity
                self.menuView.transform = CGAffineTransform.identity
                self.toggleMenuButton.transform = .identity
                self.toggleSharedButton()
            })
        }
    }
    
    func toggleSharedButton() {
        let alpha = CGFloat(fbButton.alpha == 0 ? 1 : 0)
        fbButton.alpha = alpha
        twitterButton.alpha = alpha
        googleButton.alpha = alpha
        whatsupButton.alpha = alpha
    }
    
    func radians (_ degrees: Double) -> CGFloat {
        return CGFloat(degrees * .pi / 180)
    }


}

