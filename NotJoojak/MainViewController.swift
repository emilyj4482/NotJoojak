//
//  ViewController.swift
//  NotJoojak
//
//  Created by EMILY on 21/10/2024.
//

import UIKit

class MainViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if #available(iOS 16.0, *) {
        navigationController?.navigationBar.standardAppearance.titleTextAttributes = [.foregroundColor: UIColor.white]
        } else {
            navigationController?.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.white]
        }
        
        //바 틴트 바꾸는 것
        self.navigationController?.navigationBar.barTintColor = UIColor.darkGray
    }
}

