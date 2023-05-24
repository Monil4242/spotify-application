//
//  ViewController8.swift
//  spotify application
//
//  Created by monil sojitra on 14/04/23.
//

import UIKit

class ViewController8: UIViewController {
    
    
    @IBOutlet weak var ageTextfield: UITextField!
    
    @IBOutlet weak var nextOt: UIButton!
    
    let picker = UIDatePicker()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createdatepicker()
        nextOt.layer.cornerRadius = 25
        nextOt.layer.masksToBounds = true
        
       
    }
    func createtoolbar() -> UIToolbar{
        let toolbar = UIToolbar()
        toolbar.sizeToFit()
        
        let donebtn = UIBarButtonItem(barButtonSystemItem:  .done, target: nil, action: #selector(donepressed))
        
        toolbar.setItems([donebtn], animated: true)
        return toolbar
    }
    func createdatepicker(){
        picker.preferredDatePickerStyle = .wheels
        picker.datePickerMode = .date
        ageTextfield.textAlignment = .center
        ageTextfield.inputView = picker
        ageTextfield.inputAccessoryView = createtoolbar()
    }
    @objc func donepressed(){
        let dateformatter = DateFormatter()
        dateformatter.dateStyle = .medium
        dateformatter.timeStyle = .none
        self.ageTextfield.text = dateformatter.string(from: picker.date)
        self.view.endEditing(true)
    }
    func navigate(){
        let a = storyboard?.instantiateViewController(withIdentifier: "ViewController10") as! ViewController10
        navigationController?.pushViewController(a, animated: true)
    }
    
    @IBAction func nextButtonAction(_ sender: UIButton) {
        navigate()
    }
}
