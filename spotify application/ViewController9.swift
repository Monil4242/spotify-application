//
//  ViewController9.swift
//  spotify application
//
//  Created by monil sojitra on 17/04/23.
//

import UIKit

class ViewController9: UIViewController {

    var a1 : String = ""
    
    @IBOutlet weak var phoneLb: UILabel!
    
    @IBOutlet weak var nextOt: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        phoneLb.text = a1
        nextOt.layer.cornerRadius = 25
        nextOt.layer.masksToBounds = true

        
    }
    func navigate(){
        let a = storyboard?.instantiateViewController(withIdentifier: "ViewController2") as! ViewController2
        navigationController?.pushViewController(a, animated: true)
    }
    func navigat2(){
        let a = storyboard?.instantiateViewController(withIdentifier: "ViewController3") as! ViewController3
        navigationController?.popViewController(animated: true)
    }
    

 
    @IBAction func nextButtonAction(_ sender: Any) {
        navigate()
    }
    
    @IBAction func resendSms(_ sender: Any) {
    }
    
    @IBAction func editPhoneNumber(_ sender: Any) {
        navigat2()
    }
}
