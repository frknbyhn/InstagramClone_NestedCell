//
//  ViewController.swift
//  AvocodeDesign
//
//  Created by Furkan Beyhan on 8.03.2019.
//  Copyright © 2019 Furkan Beyhan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var logInButton: UIButton!
    @IBOutlet weak var signUpButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        logInButton.backgroundColor = UIColor(displayP3Red: 1.0, green: 1.0, blue: 1.0, alpha: 1)
        logInButton.layer.shadowColor = UIColor(displayP3Red: 0.68, green: 0.68, blue: 0.68, alpha: 0.71).cgColor
        logInButton.layer.shadowOffset = CGSize(width: 0, height: 5)
        logInButton.layer.shadowOpacity = 0.71
        logInButton.layer.shadowRadius = 0.0
        logInButton.layer.masksToBounds = false
        logInButton.layer.cornerRadius = 4.0


        signUpButton.setTitleColor(UIColor(displayP3Red: 1, green: 1, blue: 1, alpha: 1), for: .normal)
        signUpButton.backgroundColor = UIColor(displayP3Red: 1.0, green: 1.0, blue: 1.0, alpha: 1)
        signUpButton.layer.shadowColor = UIColor(displayP3Red: 0.68, green: 0.68, blue: 0.68, alpha: 0.71).cgColor
        signUpButton.layer.shadowOffset = CGSize(width: 0, height: 15)
        signUpButton.layer.shadowOpacity = 0.71
        signUpButton.layer.shadowRadius = 0.0
        signUpButton.layer.masksToBounds = false
        signUpButton.layer.cornerRadius = 4.0

        let gradientLayer0 = CAGradientLayer()
        gradientLayer0.frame = signUpButton.bounds
        
        gradientLayer0.colors = [UIColor(red: 0.97, green: 0.28, blue: 0.12, alpha: 1).cgColor,
                                 UIColor(red: 0.97, green: 0.28, blue: 0.12, alpha: 1).cgColor,
                                 UIColor(red: 0.73, green: 0.00, blue: 0.38, alpha: 1).cgColor,
                                 UIColor(red: 0.73, green: 0.00, blue: 0.38, alpha: 1).cgColor]
        
        gradientLayer0.locations = [1, 0.98, 0.21, 0]

        signUpButton.layer.addSublayer(gradientLayer0)
        signUpButton.clipsToBounds = true
        
    }
    
    
    
    @IBAction func logInButton(_ sender: Any) {
        
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let newViewController = storyBoard.instantiateViewController(withIdentifier: "loginPage") as! ForgotPasswordController
//        self.present(newViewController, animated: true, completion: nil)
        navigationController?.pushViewController(newViewController, animated: true)
    }
    @IBAction func signUpButton(_ sender: Any) {
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let newView = storyBoard.instantiateViewController(withIdentifier: "registerView") as! CreateAccountViewController
        navigationController?.pushViewController(newView, animated: true)
        
    }
    
}

