//
//  RegisterViewController.swift
//  HWLogIn
//
//  Created by Ян Таше on 26.03.2022.
//

import UIKit

class RegisterViewController: UIViewController {

    
    @IBOutlet var userNameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func sendButtonAction(_ sender: Any) {
        if userNameTextField.text == "" || passwordTextField.text == "" {
            showEmptyFields()
        } else {
        var isUE: Bool = isUserExist(userName: userNameTextField.text, password: passwordTextField.text)
        if isUE == false {
            addNewUser(userName: userNameTextField.text!, password: passwordTextField.text!)
            showSuccessReg()
        } else {
            showAlertWrongReg()
        }
        }
    }
    
    private func showAlertWrongReg() {
        let alert = UIAlertController(
            title: "Ошибка регистрации",
            message: "Пользователь с именем уже существует",
            preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Ok", style:.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
    }
    
    private func showSuccessReg() {
        let alert = UIAlertController(
            title: "Успешно",
            message: "Поздравляем, вы зарегистрированы",
            preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Ok", style:.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
    }
    
    private func showEmptyFields() {
        let alert = UIAlertController(
            title: "Ошибка",
            message: "Заполните поля формы",
            preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Ok", style:.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
    }
    @IBAction func backButton(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }

}

