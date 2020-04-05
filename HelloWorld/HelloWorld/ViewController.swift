//
//  ViewController.swift
//  HelloWorld
//
//  Created by Carlistle ZHENG on 2/27/19.
//  Copyright © 2019 Carlistle ZHENG. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var username: String?
    @IBOutlet weak var userNameTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func showMessage(_ sender: UIButton) {
        // Unwrapping the optional user name
        let greetingMessage = userNameTextField.text != nil ? userNameTextField.text! : "user"
        // Create an alert controller object to display an alert
        let alertController = UIAlertController(title: "Welcome, \(greetingMessage)", message: "Hello World!", preferredStyle: .alert)
        // Add an action OK to the alert controller
        alertController.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        // Present the alert controller with animation
        present(alertController, animated: true, completion: nil)
    }
    
    
}

