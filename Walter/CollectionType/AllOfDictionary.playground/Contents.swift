import UIKit

/**
 사전(Dictionary)
 Swift의 Dictionary 타입은 Foundation 클래스의 NSDictionary 를 Bridge한 타입.
 */

/**
 빈 Dictionary 생성
 */
var namesOfIntegers = [Int: String]()
namesOfIntegers[16] = "sixteen"
namesOfIntegers = [:]

/**
 리터럴을 이용한 Dictionary의 생성
 */
var airports: [String: String] = ["YYZ": "Toronto Pearson", "DUB": "Dublin"]

/**
 Dictionary의 접근과 변경
 */
airports.count
airports.isEmpty
airports["LHR"] = "London"
