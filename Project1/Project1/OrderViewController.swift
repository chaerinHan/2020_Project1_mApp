//
//  OrderViewController.swift
//  Project1
//
//  Created by SWUCOMPUTER on 2020/05/03.
//  Copyright © 2020 SWUCOMPUTER. All rights reserved.
//

import UIKit

class OrderViewController: UIViewController {

    @IBOutlet var diaryLabel: UILabel!
    var diary: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        if let contentString = diary {
            diaryLabel.text = contentString
        }

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
