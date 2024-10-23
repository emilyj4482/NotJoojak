//
//  MemberDetailViewController.swift
//  NotJoojak
//
//  Created by songyeom on 22/10/2024.
//

import UIKit

class MemberDetailViewController: UIViewController {

    var member: Member?
    
    @IBOutlet weak var profilePicture: UILabel!
    @IBOutlet weak var backgroundPicture: UILabel!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var age: UILabel!
    @IBOutlet weak var MBTI: UILabel!
    @IBOutlet weak var hobby: UILabel!
    @IBOutlet weak var interests: UILabel!
    @IBOutlet weak var workingStyle: UILabel!
    @IBOutlet weak var devExperience: UILabel!
    @IBOutlet weak var myStrength: UILabel!
    @IBOutlet weak var blogURL: UILabel!
    @IBOutlet weak var githubURL: UILabel!
    @IBOutlet weak var favoriteFood: UILabel!

    
    @IBOutlet weak var background: UIImageView!
    @IBOutlet weak var miniprofile: UIImageView!
    @IBOutlet weak var firstBox: UIView!
    @IBOutlet weak var secondBox: UIView!
    @IBOutlet weak var lastBox: UIView!
    @IBOutlet weak var blogBox: UIButton!
    @IBOutlet weak var gitBox: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let member = member {
            name.text = member.name
            age.text = String(member.age) + "세"
            MBTI.text = member.MBTI.rawValue
            hobby.text = member.hobby
            interests.text = member.interests
            workingStyle.text = member.workingStyle
            myStrength.text = member.myStrength
            favoriteFood.text = "아직 안넣음"
            
        } else {
            print("No data received")
        }
        //미니프로필 사진
        miniprofile.layer.cornerRadius = miniprofile.frame.height / 2
        
        miniprofile.layer.borderWidth = 8
        miniprofile.layer.borderColor = UIColor.black.cgColor
        //프로필 박스
        firstBox.layer.cornerRadius = firstBox.frame.height / 2
        secondBox.layer.cornerRadius = 20
        lastBox.layer.cornerRadius = lastBox.frame.height / 2
        //블로그 박스
        blogBox.layer.cornerRadius = blogBox.frame.height / 2
        gitBox.layer.cornerRadius = gitBox.frame.height / 2
    }
    
}
