//
//  MemberDetailViewController.swift
//  NotJoojak
//
//  Created by EMILY on 22/10/2024.
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
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let member = member {
            profilePicture.text = member.profilePicture
            backgroundPicture.text = member.backgroundPicture
            name.text = member.name
            MBTI.text = member.MBTI.rawValue
            age.text = String(member.age)
            hobby.text = member.hobby
            interests.text = member.interests
            workingStyle.text = member.workingStyle
            devExperience.text = member.devExperience
            myStrength.text = member.myStrength
            blogURL.text = member.blogURL
            githubURL.text = member.githubURL
        } else {
            print("No data received")
        }
    }
    
}
