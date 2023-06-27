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
    func showalert(message:String){
        let alert = UIAlertController(title: "Error", message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction.init(title: "Ok", style: .default))
        alert.addAction(UIAlertAction.init(title: "Cancel", style: .destructive))
        present(alert, animated: true)
    
    }
    func navigate(){
        let a = storyboard?.instantiateViewController(withIdentifier: "ViewController6") as! ViewController6
        navigationController?.pushViewController(a, animated: true)
    }
    
    @IBAction func logInButtonAction(_ sender: UIButton) {
        if emailTextField.text == "" && passwordTextfield.text == ""{
            showalert(message: "Please Enter Your User Name & Password")
        }
        else if emailTextField.text == ""{
            showalert(message: "Please Enter Your User Name")
        }
        else if passwordTextfield.text == ""{
            showalert(message: "Please Enter Your Password")
            //navigate()

        }
        if emailTextField.text == "monilsojitra42@gmail.com" && passwordTextfield.text == "monilsojitra4242" {
            navigate()
           
       }
       else{
           passwordalert()
       }
    }
    func passwordalert(){
        let alert = UIAlertController(title: "Incorrect password", message: "The Password you Entered is incorrect.Please try again", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Ok", style: .default))
        present(alert, animated: true)
    }
    
   
    @IBAction func withoutPasswordButtonAction(_ sender: UIButton) {
        //navigate()
    }
}
