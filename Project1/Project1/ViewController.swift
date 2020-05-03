//
//  ViewController.swift
//  Project1
//
//  Created by SWUCOMPUTER on 2020/05/01.
//  Copyright © 2020 SWUCOMPUTER. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate{

    let hintOnImage = UIImage(named: "hintOn")
    let hintOffImage = UIImage(named: "hintOff")
    
    @IBOutlet var hintLabelStatus: UILabel!
    @IBOutlet var hintImageView: UIImageView!
    
    @IBOutlet var passwordLabel: UILabel!
    @IBOutlet var passwordTextField: UITextField!
    
    @IBAction func startButton(_ sender: Any) {
        let pw = String(passwordTextField.text!)
       //guard let uvc = self.storyboard?.instantiateViewController(identifier: "toPickUp") as? PickerViewController else {return}
        if pw == "smile" {
            self.performSegue(withIdentifier: "toPickUp", sender: self)
            //self.navigationController?.pushViewController(uvc, animated: true)
        } else {
           // self.navigationController?.pushViewController(uvc, animated: false)
            self.performSegue(withIdentifier: "toPickUp", sender: self)
            passwordLabel.text = "암호를 다시 입력해주세요."
            
        }
    }
    // Hint
    @IBAction func toggleHint(_ sender: UISwitch) {
        if sender.isOn{
            hintImageView.image = hintOnImage
            hintLabelStatus.text = "힌트 ON"
        }
        else {
            hintImageView.image = hintOffImage
            hintLabelStatus.text = "힌트 OFF"
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        hintImageView.image = hintOffImage
        hintLabelStatus.text = "힌트 OFF"
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }


}

