//
//  TeamDetailViewController.swift
//  NotJoojak
//
//  Created by EMILY on 22/10/2024.
//

import UIKit

class TeamDetailViewController: UIViewController {
    
    @IBOutlet var firstLabelBox: UIView!
    @IBOutlet var secondLabelBox: UIView!
    @IBOutlet var thirdLabelBox: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setBoxColor()
    }
    
    private func setBoxColor() {
        firstLabelBox.backgroundColor = UIColor.darkGray.withAlphaComponent(0.8)
        secondLabelBox.backgroundColor = UIColor.darkGray.withAlphaComponent(0.8)
        thirdLabelBox.backgroundColor = UIColor.darkGray.withAlphaComponent(0.8)
    }
}
