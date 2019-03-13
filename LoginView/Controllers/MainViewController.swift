//
//  MainViewController.swift
//  LoginView
//
//  Created by Артем on 11/03/2019.
//  Copyright © 2019 Gukov.space. All rights reserved.
//

import UIKit

var userOne = LoginData()

class MainViewController: UIViewController {
    
    @IBOutlet weak var registrationView: UIView!
    @IBOutlet weak var singinView: UIView!
    @IBOutlet weak var loginTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewLayer()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.identifier == "detailSegue" else { return }
        
        let controller = segue.destination as! DetailViewController
        controller.information = userOne.login
    }
    
    func viewLayer() {
        loginTextField.layer.cornerRadius = loginTextField.bounds.height / 2
        loginTextField.layer.borderWidth = 1.5
        loginTextField.layer.borderColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        
        passwordTextField.layer.cornerRadius = passwordTextField.bounds.height / 2
        passwordTextField.layer.borderWidth = 1.5
        passwordTextField.layer.borderColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        
        registrationView.layer.cornerRadius = registrationView.bounds.height / 2
        registrationView.layer.borderWidth = 1.5
        registrationView.layer.borderColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        singinView.layer.cornerRadius = singinView.bounds.height / 2
    }
    
    @IBAction func loginPressed(_ sender: UIButton) {
        
        guard loginTextField.text?.isEmpty == false, loginTextField.text == userOne.login else {
            alertWrongMessage(message: "Неверное имя пользователя")
            return
        }
        guard passwordTextField.text?.isEmpty == false, passwordTextField.text == userOne.password else {
            alertWrongMessage(message: "Неверный пароль")
            return
        }
    }

    func alertWrongMessage(message: String) {
        let alert = UIAlertController(title: "Ошибка",
                                      message: message,
                                      preferredStyle: .alert)
        
        let okAction = UIAlertAction(title: "OK",
                                     style: .default,
                                     handler: nil)
        
        alert.addAction(okAction)
        present(alert, animated: true)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        
        self.view.endEditing(true)
    }
}
