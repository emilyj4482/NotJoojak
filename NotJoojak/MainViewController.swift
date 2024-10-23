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
        
        setProfilePicture()
    }

    
    @IBOutlet weak var HaMinProfile: UIButton!
    @IBOutlet weak var JiHyeProfile: UIButton!
    @IBOutlet weak var SonGyeomProfile: UIButton!
    @IBOutlet weak var HyeonWookProfile: UIButton!
    @IBOutlet weak var JaeHoonProfile: UIButton!
    @IBOutlet weak var MinSeongProfile: UIButton!
    
    func setProfilePicture() {
        HaMinProfile.setImage(UIImage(named: Member.HaMin.profilePicture), for: .normal)
        JiHyeProfile.setImage(UIImage(named: Member.JiHye.profilePicture), for: .normal)
        SonGyeomProfile.setImage(UIImage(named: Member.SonGyeom.profilePicture), for: .normal)
        HyeonWookProfile.setImage(UIImage(named: Member.HyeonWook.profilePicture), for: .normal)
        JaeHoonProfile.setImage(UIImage(named: Member.JaeHoon.profilePicture), for: .normal)
        MinSeongProfile.setImage(UIImage(named: Member.MinSeong.profilePicture), for: .normal)
    }

    @IBAction func onPress(_ sender: UIButton) {
        var memberToSend: Member? = nil

        switch sender {
        case HaMinProfile: memberToSend = Member.HaMin
        case JiHyeProfile: memberToSend = Member.JiHye
        case SonGyeomProfile: memberToSend = Member.SonGyeom
        case HyeonWookProfile: memberToSend = Member.HyeonWook
        case JaeHoonProfile: memberToSend = Member.JaeHoon
        case MinSeongProfile: memberToSend = Member.MinSeong
        default: memberToSend = nil
        }
        
        print(memberToSend?.name as Any)
        
        let MemberDetailStoryBoard = UIStoryboard(name: "Main", bundle: nil)
        
        if let nextVC = MemberDetailStoryBoard.instantiateViewController(withIdentifier: "MemberDetailViewController") as? MemberDetailViewController {
            
            nextVC.member = memberToSend
            
            self.navigationController?.pushViewController(nextVC, animated: true)
        
        }
        
    }

}

