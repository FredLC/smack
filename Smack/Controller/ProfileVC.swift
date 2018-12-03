//
//  ProfileVC.swift
//  Smack
//
//  Created by Fred Lefevre on 2018-12-03.
//  Copyright © 2018 Fred Lefevre. All rights reserved.
//

import UIKit

class ProfileVC: UIViewController {
    
    // Outlets
    @IBOutlet weak var profileImg: UIImageView!
    @IBOutlet weak var username: UILabel!
    @IBOutlet weak var userEmail: UILabel!
    @IBOutlet weak var bgView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }

    @IBAction func closeModalPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    @IBAction func logoutPressed(_ sender: Any) {
        UserDataService.instance.logoutUser()
        NotificationCenter.default.post(name: NOTIF_USER_DATA_DID_CHANGE, object: nil)
        dismiss(animated: true, completion: nil)
    }
    
    func setupView() {
        profileImg.image = UIImage(named: UserDataService.instance.avatarName)
        profileImg.backgroundColor = UserDataService.instance.returnColor(components: UserDataService.instance.avatarColor)
        username.text = UserDataService.instance.name
        userEmail.text = UserDataService.instance.email
        
        let closeTouch = UITapGestureRecognizer(target: self, action: #selector(ProfileVC.closeTap(_recognizer:)))
        bgView.addGestureRecognizer(closeTouch)
    }
    
    @objc func closeTap(_recognizer: UITapGestureRecognizer) {
        dismiss(animated: true, completion: nil)
    }
}
