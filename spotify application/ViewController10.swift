//
//  ViewController10.swift
//  spotify application
//
//  Created by monil sojitra on 18/04/23.
//

import UIKit

class ViewController10: UIViewController {

    @IBOutlet weak var femaleOt: UIButton!
    
    @IBOutlet weak var maleOt: UIButton!
    
    @IBOutlet weak var nonOt: UIButton!
    @IBOutlet weak var otherOt: UIButton!
    
    @IBOutlet weak var preferOt: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        corneradius()

        
    }
    func corneradius(){
        femaleOt.layer.cornerRadius = 25
        femaleOt.layer.masksToBounds = true
        femaleOt.layer.borderColor = UIColor.gray.cgColor
        femaleOt.layer.borderWidth = 2
        maleOt.layer.cornerRadius = 25
        maleOt.layer.masksToBounds = true
        maleOt.layer.borderColor = UIColor.gray.cgColor
        maleOt.layer.borderWidth = 2
        nonOt.layer.cornerRadius = 25
        nonOt.layer.masksToBounds = true
        nonOt.layer.borderColor = UIColor.gray.cgColor
        nonOt.layer.borderWidth = 2
        otherOt.layer.cornerRadius = 25
        otherOt.layer.masksToBounds = true
        otherOt.layer.borderColor = UIColor.gray.cgColor
        otherOt.layer.borderWidth = 2
        preferOt.layer.cornerRadius = 25
        preferOt.layer.masksToBounds = true
        preferOt.layer.borderColor = UIColor.gray.cgColor
        preferOt.layer.borderWidth = 2
    }
    func navigate(){
        let a = storyboard?.instantiateViewController(withIdentifier: "ViewController11") as! ViewController11
        navigationController?.pushViewController(a, animated: true)
    }
    
    
    @IBAction func femaleButtonAction(_ sender: UIButton) {
        navigate()
    }
    
    @IBAction func maleButtonAction(_ sender: Any) {
        navigate()
    }
    
    @IBAction func nonBinaryButtonAction(_ sender: UIButton) {
        navigate()
    }
    
    @IBAction func otherButtonAction(_ sender: UIButton) {
        navigate()
    }
    
    @IBAction func preferButtonAction(_ sender: UIButton) {
        navigate()
    }
}
