//
//  ViewController.swift
//  HWLogIn
//
//  Created by Ян Таше on 26.03.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var userNameField: UITextField!
    @IBOutlet var passwordField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }


    @IBAction func buttonLogInAction(_ sender: Any) {
        var isUE: Bool = isUserExist(userName: userNameField.text, password: passwordField.text)
        if isUE == true {
            self.performSegue(withIdentifier: "goToUsersProfile", sender: self)
        } else {
            showAlertWrongUNorP()
        }
    }
    
    @IBAction func buttonFUAction(_ sender: Any) {
        
    }
    
    @IBAction func buttonFPAction(_ sender: Any) {
        
    }
    
    private func showAlertWrongUNorP() {
        let alert = UIAlertController(
            title: "Ошибка входа",
            message: "Пользователя с таким логином/паролем не существует",
            preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Ok", style:.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
    }
    
}

