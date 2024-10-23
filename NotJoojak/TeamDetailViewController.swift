//
//  TeamDetailViewController.swift
//  NotJoojak
//
//  Created by EMILY on 22/10/2024.
//

import UIKit

class TeamDetailViewController: UIViewController {
    
    @IBOutlet var backgroundImageView: UIImageView!
    @IBOutlet var minjiImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupImageAsset()
    }

    private func setupImageAsset() {
        backgroundImageView.image = UIImage(named: "teamDetailBackground")
        minjiImageView.image = UIImage(named: "teamDetailMinji")
    }
}
