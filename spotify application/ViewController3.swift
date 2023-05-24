//
//  ViewController3.swift
//  spotify application
//
//  Created by monil sojitra on 13/04/23.
//

import UIKit

class ViewController3: UIViewController{
    
    @IBOutlet weak var indiaOt: UILabel!
    
    @IBOutlet weak var numberOt: UILabel!
    
    @IBOutlet weak var phoneTextField: UITextField!
    
    @IBOutlet weak var nextOt: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        indiaOt.layer.cornerRadius = 4
        indiaOt.layer.masksToBounds = true
        numberOt.layer.cornerRadius = 4
        numberOt.layer.masksToBounds = true
        phoneTextField.layer.cornerRadius = 4
        phoneTextField.layer.masksToBounds = true
        nextOt.layer.cornerRadius = 25
        nextOt.layer.masksToBounds = true



       
    }
//    func navigate(){
//        let a = storyboard?.instantiateViewController(withIdentifier: "ViewController9") as! ViewController9
//        navigationController?.pushViewController(a, animated: true)
//    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let a = segue.destination as! ViewController9
        a.a1 = phoneTextField.text!
    }
    func savealert(){
        let alert = UIAlertController.init(title: "phone number save", message: "", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "save", style: .default,handler: { _ in
            UserDefaults.standard.set(self.phoneTextField.text!, forKey: "")
            self.performSegue(withIdentifier: "cell", sender: self)
            
        }))
        present(alert, animated: true)
    }
    func showalert(title:String){
        let alert = UIAlertController.init(title: "Error", message: title, preferredStyle: .alert)
        alert.addAction(UIAlertAction.init(title: "OK", style: .default))
        alert.addAction(UIAlertAction.init(title: "Cancel", style: .destructive))
        present(alert, animated: true)
        
    }
    
    

    @IBAction func numberButtonAction(_ sender: UIButton) {
       // navigate()
        savealert()
    }
    

    @IBAction func number2ButtonAction(_ sender: UIButton) {
        //navigate()
        savealert()
    }
    
    @IBAction func nextButtonAction(_ sender: UIButton) {
        //navigate()
        //savealert()
        if phoneTextField.text?.count ?? 0 != 10{
            showalert(title: "Enter your 10 digit mobile phone number")
        }
        savealert()
    }
}
