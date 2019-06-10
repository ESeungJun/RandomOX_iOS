//
//  OxViewController.swift
//  randomox
//
//  Created by 이승준 on 03/06/2019.
//  Copyright © 2019 Eseungjun. All rights reserved.
//

import UIKit

class OxViewController: UIViewController {

    @IBOutlet var navigationBar: UINavigationBar!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationController?.interactivePopGestureRecognizer?.delegate = nil

        let backButton = UIButton(type: .system)
        backButton.setImage(UIImage(named: "back.png"), for: .normal)
        backButton.imageView?.contentMode = .scaleAspectFit
        backButton.addTarget(self, action: #selector(moveOnBack), for: .touchUpInside)
        backButton.tintColor = UIColor.black
        backButton.frame = CGRect(x: 0, y: 0, width: 12, height: 12)

        navigationItem.leftBarButtonItem = UIBarButtonItem(customView: backButton)

        let rigthInfoText = UILabel(frame: CGRect(x: 0, y: 0, width: 120, height: (navigationController?.navigationBar.frame.height)!))
        rigthInfoText.text = "내 점수 : 000점"
        rigthInfoText.textAlignment = .right
        rigthInfoText.font = UIFont(name: "SDMiSaeng", size: 25)
        rigthInfoText.textColor = UIColor.black

        navigationItem.rightBarButtonItem = UIBarButtonItem(customView: rigthInfoText)

        navigationBar.setItems([navigationItem], animated: true)
    
        navigationBar.backgroundColor = UIColor.white
        navigationBar.isTranslucent = false
    }

    
    @objc func moveOnBack(){
        navigationController?.popViewController(animated: true)
    }
    
}
