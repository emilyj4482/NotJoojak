//
//  MemberStruct.swift
//  NotJoojak
//
//  Created by 김하민 on 10/22/24.
//

import Foundation

enum MBTI: String {
    // .rawValue로 String 값으로 사용 가능합니다
    case ISTJ = "ISTJ"
    case ISFJ = "ISFJ"
    case INFJ = "INFJ"
    case INTJ = "INTJ"
    case ISTP = "ISTP"
    case ISFP = "ISFP"
    case INFP = "INFP"
    case INTP = "INTP"
    case ESTP = "ESTP"
    case ESFP = "ESFP"
    case ENFP = "ENFP"
    case ENTP = "ENTP"
    case ESTJ = "ESTJ"
    case ESFJ = "ESFJ"
    case ENFJ = "ENFJ"
    case ENTJ = "ENTJ"
}

struct Member {
    let profilePicture: String // 프로필 사진
    let backgroundPicture: String // 배경 사진
    let name: String // 이름
    let age: Int // 나이
    let MBTI: MBTI // MBTI
    let hobby: String // 취미
    let interests: String // 관심사
    let workingStyle: String // 일하는 스타일
    let devExperience: String // 개발경력, 정보 : (전공/비전공, 업무유무)
    let myStrength: String // 장점
    let blogURL: String // 블로그 주소
    let githubURL: String // 깃허브 주소
}

