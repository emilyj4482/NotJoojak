//
//  MemberDetailViewController.swift
//  NotJoojak
//
//  Created by EMILY on 22/10/2024.
//

import UIKit

class MemberDetailViewController: UIViewController {
    
    @IBOutlet weak var Background: UIImageView!
    @IBOutlet weak var miniprofile: UIImageView!
    @IBOutlet weak var firstBox: UIView!
    @IBOutlet weak var secondBox: UIView!
    @IBOutlet weak var lastBox: UIView!
    @IBOutlet weak var blogBox: UIButton!
    @IBOutlet weak var gitBox: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        //미니프로필 사진
        miniprofile.layer.cornerRadius = miniprofile.frame.height / 2
        //프로필 박스
        firstBox.layer.cornerRadius = firstBox.frame.height / 2
        secondBox.layer.cornerRadius = 30
        lastBox.layer.cornerRadius = lastBox.frame.height / 2
        //블로그 박스
        blogBox.layer.cornerRadius = blogBox.frame.height / 2
        gitBox.layer.cornerRadius = gitBox.frame.height / 2
    }
    

    

}
