//
//  ViewController.swift
//  NotJoojak
//
//  Created by EMILY on 21/10/2024.
//

import UIKit

class MainViewController: UIViewController {

    let HaMin = Member(profilePicture: "profile_HaMin", backgroundPicture: "background_HaMin",
                       name: "김하민", age: 28, MBTI: .INTP, hobby: "기타치기", interests: "요리하기",
                       workingStyle: "꼼꼼함", devExperience: "1년정도", myStrength: "치밀함",
                       blogURL: "dev-hamin-kim.tistory.com", githubURL: "https://github.com/dev-hamin-kim/")
    
    let JiHye = Member(profilePicture: "profile_JiHye", backgroundPicture: "background_JiHye",
                       name: "전지혜", age: 33, MBTI: .ISTP, hobby: "취미", interests: "관심사",
                       workingStyle: "일하는 스타일", devExperience: "개발경력", myStrength: "나의 장점",
                       blogURL: "블로그 주소", githubURL: "깃헙 주소")
    
    let SonGyeom = Member(profilePicture: "profile_SonGyeom", backgroundPicture: "background_SonGyeom",
                          name: "김손겸", age: 25, MBTI: .INTP, hobby: "취미", interests: "관심사",
                          workingStyle: "일하는 스타일", devExperience: "개발경력", myStrength: "나의 장점",
                          blogURL: "블로그 주소", githubURL: "깃헙 주소")
    
    let HyeonWook = Member(profilePicture: "profile_HyeonWook", backgroundPicture: "background_HyeonWook",
                           name: "서현욱", age: 25, MBTI: .ENTP, hobby: "취미", interests: "관심사",
                           workingStyle: "일하는 스타일", devExperience: "개발경력", myStrength: "나의 장점",
                           blogURL: "블로그 주소", githubURL: "깃헙 주소")
    
    let JaeHoon = Member(profilePicture: "profile_JaeHoon", backgroundPicture: "background_JaeHoon",
                         name: "이재훈", age: 25, MBTI: .ISFP, hobby: "취미", interests: "관심사",
                         workingStyle: "일하는 스타일", devExperience: "개발경력", myStrength: "나의 장점",
                         blogURL: "블로그 주소", githubURL: "깃헙 주소")
    
    let MinSeong = Member(profilePicture: "profile_MinSeong", backgroundPicture: "background_MinSeong",
                          name: "강민성", age: 25, MBTI: .ISTJ, hobby: "취미", interests: "관심사",
                          workingStyle: "일하는 스타일", devExperience: "개발경력", myStrength: "나의 장점",
                          blogURL: "블로그 주소", githubURL: "깃헙 주소")
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBOutlet weak var HaMinProfile: UIButton!
    @IBOutlet weak var JiHyeProfile: UIButton!
    @IBOutlet weak var SonGyeomProfile: UIButton!
    @IBOutlet weak var HyeonWookProfile: UIButton!
    @IBOutlet weak var JaeHoonProfile: UIButton!
    @IBOutlet weak var MinSeongProfile: UIButton!
    

    @IBAction func onPress(_ sender: UIButton) {
        var memberToSend: Member? = nil

        switch sender {
        case HaMinProfile: memberToSend = HaMin
        case JiHyeProfile: memberToSend = JiHye
        case SonGyeomProfile: memberToSend = SonGyeom
        case HyeonWookProfile: memberToSend = HyeonWook
        case JaeHoonProfile: memberToSend = JaeHoon
        case MinSeongProfile: memberToSend = MinSeong
        default: memberToSend = nil
        }
        
        let MemberDetailStoryBoard = UIStoryboard(name: "MemberDetail", bundle: nil)
        
        if let nextVC = MemberDetailStoryBoard.instantiateViewController(withIdentifier: "MemberDetailViewController") as? MemberDetailViewController {
            
            nextVC.member = memberToSend
            
            self.navigationController?.pushViewController(nextVC, animated: true)
        
        }
        
    }
    
}

