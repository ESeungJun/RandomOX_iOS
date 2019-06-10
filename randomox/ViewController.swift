//
//  ViewController.swift
//  randomox
//
//  Created by 이승준 on 03/06/2019.
//  Copyright © 2019 Eseungjun. All rights reserved.
//

import UIKit


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func testBtnAction(_ sender: Any) {
        let oxVC = OxViewController()
        self.navigationController?.pushViewController(oxVC, animated: true)
        
    }
    
}


