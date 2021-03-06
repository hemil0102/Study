//
//  main.swift
//  01_Basics
//
//  Created by JONGMIN Youn on 2022/02/12.
//

//Paradigms - Swift 언어 특성

//#1. OOP(객체지향) Object Oriented Program'g
/*
 1. 사용자 정의 자료형... 으로 이해
 2. 사람이 기본 자료형 처럼 직접 변수와 기능을 캡슐화 하여 새로운 타입을 만드는 것
*/

//#2. 함수형
/*
 1. 함수 자체를 객체화하여 사용 가능하다
 2. 어떤 상황에서 프로그램을 실행하더라도 함수를 이용해 일정하게 같은 결과를 도출할 수 있다.
 3. 일급 객체

- 일급 객체란?
전달인자로 사용가능
동적 프로퍼티 할당 가능(런타임)
변수나 데이터 구조에 저장 가능
반환 값으로 사용 가능
할당할 때 사용된 이름과 관계없이 고유한 객체로 구별 가능(객체화)
 
 + 클로저도 이해 해당.... -> 함수의 전달인자로 클로저 사용 가능
 
 */


// #3. 프로토콜 지향
/*
 프로토콜, 익스텐션 지향으로 다중상속이 불가능한 것을 뛰어넘을 수 있다.
 더 나은 추상화 메커니즘 구현 가능
*/


// 혹시, 문서에서 바로 마크업 텍스트도 작성 가능하던데..(+ 퀵헬프)
// 개발 문서에서 Markup Formatting Reference 참고!


//var, let
 var name: String = "yagom"
 var age: Int = 100
 var job = "IOS Programmer"
 var height = 181.5
 print(type(of: height))

 age = 99
 job = "Writer"
 print("my name is \(name), \(age), \(job), \(height)")

 let name2: String = "yagom"
 var age2: Int = 100
 var job2 = "iOS Programmer"
 let height2 = 181.5
 age2 = 99
 job2 = "Writer"
 //name2 = "yagom2" //error
 print("My name is \(name2), i'm \(age2) years old. i'm \(job2) and the height is \(height2)")
