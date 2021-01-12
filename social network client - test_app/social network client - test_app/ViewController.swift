//
//  ViewController.swift
//  social network client - test_app
//
//  Created by Алексей Кодинцев on 11.01.2021.
//

import UIKit

class ViewController: UIViewController {

    private let login = "admin"
    private let pass = "password"
    
    @IBOutlet weak var loginField: UITextField!
    @IBOutlet weak var passField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        if identifier == "login" {
            if (loginField.text == login) && (passField.text == pass) {
                return true
            }
            else {
                let alert = UIAlertController(title: "Error", message: "Wrong password or username", preferredStyle: .alert)
                alert.addAction(UIAlertAction(title: "Okay", style: .default) { (action) in self.passField.text = nil })
                self.present(alert, animated: true, completion: nil)
                return false
            }
        } else {
            return true
        }

    }
}
