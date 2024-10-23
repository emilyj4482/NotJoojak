//
//  ViewController.swift
//  NotJoojak
//
//  Created by EMILY on 21/10/2024.
//

import UIKit

class MainViewController: UIViewController {

    let HaMin = Member(profilePicture: "profile_HaMin", backgroundPicture: "background_HaMin",
                       name: "김하민", age: 28, MBTI: .INTP, hobby: "기타치기, 요리하기, 락편곡하기", interests: "예쁜 기타, 뮤즈 내한 일정",
                       workingStyle: "구글에몽 도와줘", devExperience: "비전공자 (독학 1년)", myStrength: "위기가 닥쳤을 때 침착함",
                       blogURL: "https://dev-hamin-kim.tistory.com", githubURL: "https://github.com/dev-hamin-kim/",
                       favoriteFood: "샌드위치, 마파두부", tmi: "몽골과 중국에서 살다옴")
    
    let JiHye = Member(profilePicture: "profile_JiHye", backgroundPicture: "background_JiHye",
                       name: "전지혜", age: 33, MBTI: .ISTP, hobby: "공연가기, 야구보기, 발로란트보기", interests: "영어, iOS 개발",
                       workingStyle: "벼락치기, 실전부터 부딪치기", devExperience: "비전공자 (독학 1년반)", myStrength: "열려있는 생각",
                       blogURL: "https://emily2022.tistory.com", githubURL: "https://github.com/emilyj4482",
                       favoriteFood: "삼겹살, 떡볶이", tmi: "집에만 있습니다")
    
    let SonGyeom = Member(profilePicture: "profile_SonGyeom", backgroundPicture: "background_SonGyeom",
                          name: "김손겸", age: 25, MBTI: .INTP, hobby: "픽셀아트 그리기", interests: "깃허브 이용한 블로그 만들기",
                          workingStyle: "일단 모두 메모", devExperience: "비전공자", myStrength: "모르는건 알 때까지 잡기",
                          blogURL: "https://velog.io/@gyeomsony/posts", githubURL: "https://github.com/gyeomsony",
                          favoriteFood: "불닭볶음면, 면 종류 다.", tmi: "감기가 너무 안 낫는다")
    
    let HyeonWook = Member(profilePicture: "profile_HyeonWook", backgroundPicture: "background_HyeonWook",
                           name: "서현욱", age: 25, MBTI: .ENTP, hobby: "게임하기, 음식해먹기", interests: "게임장비, 내일은 뭐먹지?",
                           workingStyle: "일단 머리 박고 시작", devExperience: "비전공자", myStrength: "매사에 긍정적이려고 노력함",
                           blogURL: "https://velog.io/@seojy523/posts", githubURL: "https://github.com/hyunwook-seo",
                           favoriteFood: "고기러버", tmi: "집돌이 겜돌이")
    
    let JaeHoon = Member(profilePicture: "profile_JaeHoon", backgroundPicture: "background_JaeHoon",
                         name: "이재훈", age: 25, MBTI: .ISFP, hobby: "클라이밍", interests: "영어, 전자기기",
                         workingStyle: "일하는 스타일", devExperience: "준전공자 (독학 5개월)", myStrength: "작심삼일을 계속계속",
                         blogURL: "https://velog.io/@jeffapd_/posts", githubURL: "https://github.com/jeff-0324",
                         favoriteFood: "피자, 고기라면 뭐든", tmi: "벽만 보면 잡고싶은 클라이머")
    
    let MinSeong = Member(profilePicture: "profile_MinSeong", backgroundPicture: "background_MinSeong",
                          name: "강민성", age: 25, MBTI: .ISTJ, hobby: "헬스", interests: "종국이형 영상 보기",
                          workingStyle: "해보고 안되면 물어보자", devExperience: "비전공자", myStrength: "빠꾸없음",
                          blogURL: "https://alstjd0428.tistory.com/", githubURL: "https://github.com/kangminseoung",
                          favoriteFood: "고기면 됩니다. 편식없음", tmi: "내일 아침에 운동가야지~")
    
    
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
        
        print(memberToSend?.name as Any)
        
        let MemberDetailStoryBoard = UIStoryboard(name: "MemberDetail", bundle: nil)
        
        if let nextVC = MemberDetailStoryBoard.instantiateViewController(withIdentifier: "MemberDetailViewController") as? MemberDetailViewController {
            
            nextVC.member = memberToSend
            
            self.navigationController?.pushViewController(nextVC, animated: true)
        
        }
        
    }
    
}

