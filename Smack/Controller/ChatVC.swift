//
//  ChatVC.swift
//  Smack
//
//  Created by Fred Lefevre on 2018-11-26.
//  Copyright © 2018 Fred Lefevre. All rights reserved.
//

import UIKit

class ChatVC: UIViewController {
    
    
    @IBOutlet weak var burgerBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        burgerBtn.addTarget(self.revealViewController(), action: #selector(SWRevealViewController.revealToggle(_:)), for: .touchUpInside)
        self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        self.view.addGestureRecognizer(self.revealViewController().tapGestureRecognizer())
    }
    

}
