//
//  TalkViewController.swift
//  NotJoojak
//
//  Created by EMILY on 22/10/2024.
//

import UIKit

class TalkViewController: UIViewController {
    
    @IBOutlet weak var firstView: UIView!
    @IBOutlet weak var secondView: UIView!
    @IBOutlet weak var thirdView: UIView!
    @IBOutlet weak var fourthView: UIView!
    @IBOutlet weak var fifthView: UIView!
    @IBOutlet weak var sixthView: UIView!
    @IBOutlet weak var chatView: UIView!
    
    // imageView
    @IBOutlet weak var firstImageView: UIImageView!
    @IBOutlet weak var secondImageView: UIImageView!
    @IBOutlet weak var thirdImageView: UIImageView!
    @IBOutlet weak var fourthImageView: UIImageView!
    @IBOutlet weak var fifthImageView: UIImageView!
    @IBOutlet weak var sixthImageView: UIImageView!
    
    // label
    @IBOutlet weak var firstNameLabel: UILabel!
    @IBOutlet weak var secondNameLabel: UILabel!
    @IBOutlet weak var thirdNameLabel: UILabel!
    @IBOutlet weak var fourthNameLabel: UILabel!
    @IBOutlet weak var fifthNameLabel: UILabel!
    @IBOutlet weak var sixthNameLabel: UILabel!
    @IBOutlet weak var lastChatLabel: UILabel!
    
    // uiView
    @IBOutlet weak var firstAsk: UIView!
    @IBOutlet weak var secondAsk: UIView!
    @IBOutlet weak var thirdAsk: UIView!
    @IBOutlet weak var chattingBox: UIView!
    
    var viewOrder : [UIView] = []
    let index : Int = 0
    var count : Int = 0
    var nameIndex : Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 초기 세팅 호출
        setting()
        setName()
        setProfilePicture()
    }
    
    func setting () {
        // 배열 할당
        viewOrder = [firstAsk, firstView, secondAsk, secondView, thirdView, thirdAsk, fourthView, fifthView, sixthView, chatView]
        viewOrder.forEach { $0.isHidden = true }
      
        chattingBox.clipsToBounds = true
        chattingBox.layer.cornerRadius = 20
        chattingBox.backgroundColor = .clear
        chattingBox.layer.borderWidth = 1
        chattingBox.layer.borderColor = UIColor.white.cgColor
        
    }
    
    // 뷰를 출력하는 함수
    func showChat(index : Int){
        let index = count
        if index == 0 || index == 2 || index == 5 {
            viewOrder[index].isHidden = false
        }else if index == 9 {
            viewOrder[index].isHidden = false
        } else {
            viewOrder[index].isHidden = false
        }
    }
    
    // 전송버튼 누를 시 채팅 출력
    @IBAction func tappedSendButton(_ sender: UIButton) {
        if count < viewOrder.count {
            showChat(index: count)
            count += 1
        }
    }
    
    func setName() {
        firstNameLabel.text = Member.HaMin.name
        secondNameLabel.text = Member.HyeonWook.name
        thirdNameLabel.text = Member.JiHye.name
        fourthNameLabel.text = Member.JaeHoon.name
        fifthNameLabel.text = Member.MinSeong.name
        sixthNameLabel.text = Member.SonGyeom.name
    }
    
    func setProfilePicture() {
        firstImageView.image = UIImage(named: Member.HaMin.profilePicture)
        firstImageView.layer.cornerRadius = firstImageView.frame.height / 2
        firstImageView.clipsToBounds = true

        secondImageView.image = UIImage(named: Member.HyeonWook.profilePicture)
        secondImageView.layer.cornerRadius = secondImageView.frame.height / 2
        secondImageView.clipsToBounds = true
        
        thirdImageView.image = UIImage(named: Member.JiHye.profilePicture)
        thirdImageView.layer.cornerRadius = thirdImageView.frame.height / 2
        thirdImageView.clipsToBounds = true
        
        fourthImageView.image = UIImage(named: Member.JaeHoon.profilePicture)
        fourthImageView.layer.cornerRadius = fourthImageView.frame.height / 2
        fourthImageView.clipsToBounds = true
        
        fifthImageView.image = UIImage(named: Member.MinSeong.profilePicture)
        fifthImageView.layer.cornerRadius = fifthImageView.frame.height / 2
        fifthImageView.clipsToBounds = true
        
        sixthImageView.image = UIImage(named: Member.SonGyeom.profilePicture)
        sixthImageView.layer.cornerRadius = sixthImageView.frame.height / 2
        sixthImageView.clipsToBounds = true
    }
    
    
    
    // 프로필 사진 선택하는 제스처
    @IBAction func tappedImageView(_ sender: UITapGestureRecognizer) {
        var memberToSend: Member? = nil
        
        if let tappedImageView = sender.view as? UIImageView {
            switch tappedImageView {
            case firstImageView: memberToSend = Member.HaMin
            case secondImageView: memberToSend = Member.HyeonWook
            case thirdImageView: memberToSend = Member.JiHye
            case fourthImageView: memberToSend = Member.JaeHoon
            case fifthImageView: memberToSend = Member.MinSeong
            case sixthImageView: memberToSend = Member.SonGyeom
            default: memberToSend = nil
            }

        }
        let MemberDetailStoryBoard = UIStoryboard(name: "Main", bundle: nil)
        
        if let nextVC = MemberDetailStoryBoard.instantiateViewController(withIdentifier: "MemberDetailViewController") as? MemberDetailViewController {
            nextVC.member = memberToSend
            self.navigationController?.pushViewController(nextVC, animated: true)
        }
    }

}

