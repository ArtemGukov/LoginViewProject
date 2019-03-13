//
//  LoginViewController.swift
//  LoginView
//
//  Created by Артем on 13/03/2019.
//  Copyright © 2019 Gukov.space. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    var information: String = ""

    @IBOutlet weak var detailView: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        detailView.text = "Привет, \(information)!"
    }
}
