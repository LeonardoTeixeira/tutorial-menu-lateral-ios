//
//  FirstScreenViewController.swift
//  MenuLateral
//
//  Created by Leonardo Cesar Teixeira on 26/04/16.
//  Copyright © 2016 LCT Tecnologia. All rights reserved.
//

import UIKit

class FirstScreenViewController: UIViewController {
    
    
    @IBOutlet weak var menuButton: UIBarButtonItem!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if self.revealViewController() != nil {
            menuButton.target = self.revealViewController()
            menuButton.action = #selector(SWRevealViewController.revealToggle(_:))
            self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        }
    }

}
