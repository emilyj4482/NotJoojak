//
//  MemberDetailViewController.swift
//  NotJoojak
//
//  Created by songyeom on 22/10/2024.
//

import UIKit

class MemberDetailViewController: UIViewController {

    var member: Member?

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
    @IBOutlet weak var tmi: UILabel!
    @IBOutlet weak var location: UILabel!
    
    @IBOutlet weak var backgroundPicture: UIImageView!
    @IBOutlet weak var profilePicture: UIImageView!
    @IBOutlet weak var firstBox: UIView!
    @IBOutlet weak var secondBox: UIView!
    @IBOutlet weak var lastBox: UIView!
    @IBOutlet weak var blogIcon: UIButton!
    @IBOutlet weak var githubIcon: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let member = member {
            
            profilePicture.image = UIImage(named: member.profilePicture)
            backgroundPicture.image = UIImage(named: member.backgroundPicture)
            
            name.text = member.name
            age.text = String(member.age) + "세"
            MBTI.text = member.MBTI.rawValue
            hobby.text = member.hobby
            interests.text = member.interests
            workingStyle.text = member.workingStyle
            myStrength.text = member.myStrength
            favoriteFood.text = member.favoriteFood
            tmi.text = member.tmi
            location.text = member.location
            
            if member.blogURL.contains("tistory") {
                blogIcon.setImage(UIImage(named: "icon_tistory"), for: .normal)
            } else if member.blogURL.contains("velog") {
                blogIcon.setImage(UIImage(named: "icon_velog"), for: .normal)
            }
            
        } else {
            print("No data received")
        }
        //미니프로필 사진
        profilePicture.layer.cornerRadius = profilePicture.frame.height / 2
        
        profilePicture.layer.borderWidth = 8
        profilePicture.layer.borderColor = UIColor.black.cgColor
        
        //프로필 박스
        firstBox.layer.cornerRadius = firstBox.frame.height / 2
        secondBox.layer.cornerRadius = 20
        lastBox.layer.cornerRadius = lastBox.frame.height / 2
        
        //블로그 박스
        blogIcon.layer.cornerRadius = blogIcon.frame.height / 2
        blogIcon.clipsToBounds = true
        githubIcon.layer.cornerRadius = githubIcon.frame.height / 2
        
    }
}
