import UIKit

/**
 이용가능한 API 버전 확인
 특정 플랫폼(iOS, macOS, tvOS, watchOS 등)과
 특정 버전을 확인하는 구문을 제공
 */

//if #available(platform name version, ..., *) {
//    statements to execute if the APIs are available
//} else {
//    fallback statements to execute if the APIs are unavailable
//}

//실사용
if #available(iOS 10, macOS 10.12, *) {
    // Use iOS 10 APIs on iOS, and use macOS 10.12 APIs on macOS
} else {
    // Fall back to earlier iOS and macOS APIs
}

