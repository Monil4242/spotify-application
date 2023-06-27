//
//  ViewController5.swift
//  spotify application
//
//  Created by monil sojitra on 13/04/23.
//

import UIKit

class ViewController5: UIViewController {

    @IBOutlet weak var textField1: UITextField!
    
    @IBOutlet weak var nextOt: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        textField1.layer.cornerRadius = 4
        textField1.layer.masksToBounds = true
        nextOt.layer.cornerRadius = 25
        nextOt.layer.masksToBounds = true

        
    }
    func navigate(){
        let a = storyboard?.instantiateViewController(withIdentifier: "ViewController8") as! ViewController8
        navigationController?.pushViewController(a, animated: true)
    }
    func savealert(){
        let alert = UIAlertController.init(title: "Please Enter your email", message: "", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "save", style: .default,handler: { _ in
            UserDefaults.standard.set(self.textField1.text!, forKey: "")
            
        }))
        present(alert, animated: true)
    }
    func showalert(title:String){
        let alert = UIAlertController.init(title: "Error", message: title, preferredStyle: .alert)
        alert.addAction(UIAlertAction.init(title: "OK", style: .default))
        alert.addAction(UIAlertAction.init(title: "Cancel", style: .destructive))
        present(alert, animated: true)
        
    }
    

   
    @IBAction func nextButtonAction(_ sender: UIButton) {
        //navigate()
        if textField1.text == ""{
            showalert(title: "Please enter your Strong password")
        }
        if textField1.text == "monilsojitra4242"{
            navigate()
        }
    }
    
}
