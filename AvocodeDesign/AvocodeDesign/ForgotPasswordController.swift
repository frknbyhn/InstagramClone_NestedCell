//
//  ForgotPasswordController.swift
//  AvocodeDesign
//
//  Created by Furkan Beyhan on 10.03.2019.
//  Copyright © 2019 Furkan Beyhan. All rights reserved.
//

import UIKit

class ForgotPasswordController: UIViewController {

    @IBOutlet weak var sendButton: UIButton!
    @IBOutlet weak var passTextField: UITextField!
    @IBOutlet weak var userTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        passTextField.backgroundColor = UIColor(displayP3Red: 1, green: 1, blue: 1, alpha: 1)
        passTextField.layer.shadowColor = UIColor(displayP3Red: 0.68, green: 0.68, blue: 0.68, alpha: 0.71).cgColor
        passTextField.layer.shadowOffset = CGSize(width: 0, height: 5)
        passTextField.layer.shadowOpacity = 0.71
        passTextField.layer.shadowRadius = 0.0
        passTextField.layer.masksToBounds = false
        passTextField.layer.cornerRadius = 4.0
        
        userTextField.backgroundColor = UIColor(displayP3Red: 1, green: 1, blue: 1, alpha: 1)
        userTextField.layer.shadowColor = UIColor(displayP3Red: 0.68, green: 0.68, blue: 0.68, alpha: 0.71).cgColor
        userTextField.layer.shadowOffset = CGSize(width: 0, height: 5)
        userTextField.layer.shadowOpacity = 0.71
        userTextField.layer.shadowRadius = 0.0
        userTextField.layer.masksToBounds = false
        userTextField.layer.cornerRadius = 4.0
        
        sendButton.setTitleColor(UIColor(displayP3Red: 1, green: 1, blue: 1, alpha: 1), for: .normal)
        sendButton.backgroundColor = UIColor(displayP3Red: 1.0, green: 1.0, blue: 1.0, alpha: 1)
        sendButton.layer.shadowColor = UIColor(displayP3Red: 0.68, green: 0.68, blue: 0.68, alpha: 0.71).cgColor
        sendButton.layer.shadowOffset = CGSize(width: 0, height: 5)
        sendButton.layer.shadowOpacity = 0.71
        sendButton.layer.shadowRadius = 0.0
        sendButton.layer.masksToBounds = false
        sendButton.layer.cornerRadius = 4.0
        
        let gradientLayer0 = CAGradientLayer()
        gradientLayer0.frame = sendButton.bounds
        gradientLayer0.colors = [UIColor(red: 0.97, green: 0.28, blue: 0.12, alpha: 1).cgColor, UIColor(red: 0.97, green: 0.28, blue: 0.12, alpha: 1).cgColor, UIColor(red: 0.73, green: 0.00, blue: 0.38, alpha: 1).cgColor, UIColor(red: 0.73, green: 0.00, blue: 0.38, alpha: 1).cgColor]
        gradientLayer0.locations = [1, 0.98, 0.21, 0]
        sendButton.layer.addSublayer(gradientLayer0)
        sendButton.clipsToBounds = true

        
    }
    @IBAction func logInButton(_ sender: Any) {
        
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let newView = storyBoard.instantiateViewController(withIdentifier: "homeView") as! TableViewController
//        navigationController?.pushViewController(newView, animated: true)
        self.present(newView, animated: true, completion: nil)
        
    }
    


}
