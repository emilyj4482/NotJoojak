//
//  WebPageViewController.swift
//  NotJoojak
//
//  Created by EMILY on 22/10/2024.
//

import UIKit

class WebPageViewController: UIViewController {
    
    @IBOutlet var backgroundView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func closeButtonTapped(_ sender: UIButton) {
        dismiss(animated: true)
    }
    
}
