import UIKit

//While()
//조건이 거짓일 때까지 반복

var count = 20
//while count > 0 {
//    print("count \(count)")
//    count -= 1
//}

//repeat while
//다른 언어의 do-while 과 비슷, 최소 한번 실행 후, 조건이 거짓일때까지 반복

var idx = 1
repeat {
    print("idx : \(idx)")
    idx += 1
} while idx < 10

