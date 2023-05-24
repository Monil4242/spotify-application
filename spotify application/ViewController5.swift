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
    

   
    @IBAction func nextButtonAction(_ sender: UIButton) {
        navigate()
    }
    
}
