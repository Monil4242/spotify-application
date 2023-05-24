//
//  ViewController.swift
//  spotify application
//
//  Created by monil sojitra on 13/04/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var signUpFreeot: UIButton!
    
    @IBOutlet weak var phoneNumberot: UIButton!
    
    @IBOutlet weak var googleot: UIButton!
    
    @IBOutlet weak var facebookot: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        corner()
    }
    func corner(){
        signUpFreeot.layer.cornerRadius = 25
        signUpFreeot.layer.masksToBounds = true
        phoneNumberot.layer.cornerRadius = 25
        phoneNumberot.layer.masksToBounds = true
        phoneNumberot.layer.borderColor = UIColor.gray.cgColor
        phoneNumberot.layer.borderWidth = 2
        googleot.layer.cornerRadius = 25
        googleot.layer.masksToBounds = true
        googleot.layer.borderColor = UIColor.gray.cgColor
        googleot.layer.borderWidth = 2
        facebookot.layer.cornerRadius = 25
        facebookot.layer.masksToBounds = true
        facebookot.layer.borderColor = UIColor.gray.cgColor
        facebookot.layer.borderWidth = 2
       
    }
    func navigate(){
        let n = storyboard?.instantiateViewController(withIdentifier: "ViewController2") as! ViewController2
        navigationController?.pushViewController(n, animated: true)
    }
    func navigate2(){
        let n = storyboard?.instantiateViewController(withIdentifier: "ViewController13") as! ViewController13
        present(n, animated: false)
    }

    @IBAction func signUpButtonAction(_ sender: UIButton) {
        navigate()
    }
    
    @IBAction func phoneNumberButtonAction(_ sender: UIButton) {
        let n = storyboard?.instantiateViewController(withIdentifier: "ViewController3") as! ViewController3
        navigationController?.pushViewController(n, animated: true)
    }
    
    @IBAction func googleButtonAction(_ sender: UIButton) {
        navigate2()
    }
    
    @IBAction func facebookButtonAction(_ sender: Any) {
    }
    
    @IBAction func logInButtonAction(_ sender: Any) {
        let n = storyboard?.instantiateViewController(withIdentifier: "ViewController4") as! ViewController4
        navigationController?.pushViewController(n, animated: true)
    }
}

