//
//  WelcomeViewController.swift
//  HWLogIn
//
//  Created by Ян Таше on 26.03.2022.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet var backButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func backButtonAction(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
}
