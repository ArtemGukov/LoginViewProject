//
//  ForgotPasswordViewController.swift
//  LoginView
//
//  Created by Артем on 13/03/2019.
//  Copyright © 2019 Gukov.space. All rights reserved.
//

import UIKit

class ForgotPasswordViewController: UIViewController {

    @IBOutlet weak var forgotPasswordLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        forgotPasswordLabel.text = "Это не проблема! \n Имя пользователя: \(userOne.login) \n Пароль: \(userOne.password)"
}
}
