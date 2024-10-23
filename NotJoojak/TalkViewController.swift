//
//  TalkViewController.swift
//  NotJoojak
//
//  Created by EMILY on 22/10/2024.
//

import UIKit

class TalkViewController: UIViewController {
    
    // stackView
    @IBOutlet weak var firstStackView: UIStackView!
    @IBOutlet weak var secondStackView: UIStackView!
    @IBOutlet weak var thirdStackView: UIStackView!
    @IBOutlet weak var fourthStackView: UIStackView!
    @IBOutlet weak var fifthStackView: UIStackView!
    @IBOutlet weak var sixthStackView: UIStackView!
    
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
    var nameOrder : [UIView] = []
    let index : Int = 0
    var count : Int = 0
    var nameIndex : Int = 0
    var namedirection : String = "left"
    
    
    let firstSegue : String = "firstSegue"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 초기 세팅 호출
        setting()
    }
    
    func setting () {
        firstStackView.isHidden = true
        secondStackView.isHidden = true
        thirdStackView.isHidden = true
        fourthStackView.isHidden = true
        fifthStackView.isHidden = true
        sixthStackView.isHidden = true
        firstAsk.isHidden = true
        secondAsk.isHidden = true
        thirdAsk.isHidden = true
        firstNameLabel.isHidden = true
        secondNameLabel.isHidden = true
        thirdNameLabel.isHidden = true
        fourthNameLabel.isHidden = true
        fifthNameLabel.isHidden = true
        sixthNameLabel.isHidden = true
        lastChatLabel.isHidden = true
        
        
        chattingBox.clipsToBounds = true
        chattingBox.layer.cornerRadius = 20
        chattingBox.backgroundColor = .clear
        chattingBox.layer.borderWidth = 1
        chattingBox.layer.borderColor = UIColor.white.cgColor
        
        
        // 배열 선언
        viewOrder = [firstAsk, firstStackView, secondAsk, secondStackView, thirdStackView, thirdAsk, fourthStackView, fifthStackView, sixthStackView]
        nameOrder = [firstNameLabel, secondNameLabel, thirdNameLabel, fourthNameLabel, fifthNameLabel, sixthNameLabel, lastChatLabel]
    }
    
    // 뷰를 출력하는 함수
    func showChat(index : Int){
        let index = count
        if index == 0 || index == 2 || index == 5 {
            namedirection = "right"
            viewOrder[index].isHidden = false
        }else if index == 9 {
            namedirection = "left"
            showName(direction: namedirection)
            nameOrder[nameIndex].isHidden = false
        } else {
            namedirection = "left"
            showName(direction: namedirection)
            nameIndex += 1
            viewOrder[index].isHidden = false
        }
    }
    
    // 이름을 출력하는 함수
    func showName(direction: String) {
        if direction == "left" {
            nameOrder[nameIndex].isHidden = false
        }
    }
    
    // 프로필 사진 선택하는 제스처
    @IBAction func tappedImageView(_ sender: UITapGestureRecognizer) {
        performSegue(withIdentifier: firstSegue, sender: nil)
    }
    
   /*
    @IBAction func tappedLabel(_ sender: UITapGestureRecognizer) {
        performSegue(withIdentifier: "teamIntroduceSegue", sender: nil)
    }
    */
    
    // 전송버튼 누를 시 채팅 출력
    @IBAction func tappedSendButton(_ sender: UIButton) {
        if count <= viewOrder.count {
            showChat(index: count)
            count += 1
        }
    }
}

