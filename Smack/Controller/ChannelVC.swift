//
//  ChannelVC.swift
//  Smack
//
//  Created by Fred Lefevre on 2018-11-26.
//  Copyright © 2018 Fred Lefevre. All rights reserved.
//

import UIKit

class ChannelVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.revealViewController()?.rearViewRevealWidth = self.view.frame.size.width - 60
    }


}
