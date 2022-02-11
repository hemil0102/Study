import UIKit
import Foundation

/**
 클로저(Closures)
 다음 세가지 형태 중 하나를 갖는다.
 1. 전역함수 : 이름이 있고 어떤 값도 캡쳐하지 않는 클로저
 2. 중첩함수 : 이름이 있고 관련한 함수로부터 값을 캡쳐할 수 있는 클로저
 3. 클로저표현 : 경량화 된 문법으로 쓰여지고 관련된 문맥(Context)으로부터 값을 캡쳐할 수 있는 이름이 없는 클로저
 
 클로저의 최적화
 1. 문맥(Context)에서 인자 타입(Parameter Type)과 반환 타입(Return Type)의 추론
 2. 단일 표현 클로저에서의 암시적 변환
 3. 축약된 인자 이름
 4. 후위 클로저 문법
 
 하나하나보면 쉽다. 쫄지마라
 */

/**
 정렬 메소드(The Sorted Method)
 sorted(by:) 메소드
 */
let names = ["Harry", "Snew", "Walter", "Ewa", "Christie", "Barry"]
//클로저를 제공하는 일반적인 방법은, 함수를 하나 만드는 것.
func backward(_ s1: String, _ s2: String) -> Bool {
    return s1 > s2
}
var reversedNames = names.sorted(by: backward(_:_:))

/**
 클로저 표현 문법(Closure Expression Syntax)
 */
//{ (parameters) -> return type in
//    statements
//}
//이렇게 인자로 들어가는 형태를 '인라인 클로저'라 부름.
reversedNames = names.sorted(by: { (s1: String, s2: String) -> Bool in
    return s1 > s2
})
