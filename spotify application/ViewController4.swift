//
//  ViewController4.swift
//  spotify application
//
//  Created by monil sojitra on 13/04/23.
//

import UIKit

class ViewController4: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var passwordTextfield: UITextField!
    
    @IBOutlet weak var logInot: UIButton!
    
    @IBOutlet weak var logInWithoutPasswordot: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        emailTextField.layer.cornerRadius = 4
        emailTextField.layer.masksToBounds = true
        passwordTextfield.layer.cornerRadius = 4
        passwordTextfield.layer.masksToBounds = true
        logInot.layer.cornerRadius = 25
        logInot.layer.masksToBounds = true
        logInWithoutPasswordot.layer.cornerRadius = 20
        logInWithoutPasswordot.layer.masksToBounds = true
        logInWithoutPasswordot.layer.borderColor = UIColor.gray.cgColor
        logInWithoutPasswordot.layer.borderWidth = 1
        

        
    }
    func navigate(){
        let a = storyboard?.instantiateViewController(withIdentifier: "ViewController6") as! ViewController6
        navigationController?.pushViewController(a, animated: true)
    }
    
    @IBAction func logInButtonAction(_ sender: UIButton) {
    }
    
   
    @IBAction func withoutPasswordButtonAction(_ sender: UIButton) {
        navigate()
    }
}
