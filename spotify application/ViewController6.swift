//
//  ViewController6.swift
//  spotify application
//
//  Created by monil sojitra on 14/04/23.
//

import UIKit

class ViewController6: UIViewController {

    @IBOutlet weak var textField1: UITextField!
    
    @IBOutlet weak var getOt: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        textField1.layer.cornerRadius = 4
        textField1.layer.masksToBounds = true
        getOt.layer.cornerRadius = 25
        getOt.layer.masksToBounds = true

        
    }
    func navigate(){
        let a = storyboard?.instantiateViewController(withIdentifier: "ViewController7") as! ViewController7
        navigationController?.pushViewController(a, animated: true)
    }
    

    @IBAction func getLinkButtonAction(_ sender: UIButton) {
        navigate()
    }
    

}
