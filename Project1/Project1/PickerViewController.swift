//
//  PickerViewController.swift
//  Project1
//
//  Created by SWUCOMPUTER on 2020/05/03.
//  Copyright © 2020 SWUCOMPUTER. All rights reserved.
//

import UIKit

class PickerViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource, UITextFieldDelegate {
    
    let colorArray: [String] = ["Red", "Blue", "Green", "Yellow"]

    // component몇개 가질지
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    // component별 몇 개의 row 필요한지
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return colorArray.count
    }
    
    func pickerview(_pickerView : UIPickerView, titleForRow row: Int, forComponent component: Int) ->String {
        return colorArray[row]
    }
    
    
    @IBOutlet var colorPickerView: UIPickerView!
    @IBOutlet var diaryTextField: UITextField!
    
    @IBAction func pressButton(_ sender: Any) {
        self.performSegue(withIdentifier: "toShowUpView", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toShowUpView" {
            let destVC = segue.destination as! OrderViewController
            let content: String! = diaryTextField.text
            destVC.diaryLabel.text = content
            let colorPicked:String = colorArray[self.colorPickerView.selectedRow(inComponent: 0)]
            if colorPicked == "Red" {
                destVC.view.backgroundColor = UIColor.red
            }
            else if colorPicked == "Blue" {
                destVC.view.backgroundColor = UIColor.blue
            }
            else if colorPicked == "Green" {
                destVC.view.backgroundColor = UIColor.green
            }
            else {
                destVC.view.backgroundColor = UIColor.yellow
            }
            
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
