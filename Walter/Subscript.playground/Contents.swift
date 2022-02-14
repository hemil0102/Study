import UIKit

/**
 서브스크립트(Subscript)
 콜렉션, 리스트, 시퀀스 등 집합의 특정 멤버 엘리먼트에 간단하게 접근할 수 있는 문법.
 추가적인 메서드 없이 특정 값을 할당(Assign)하거나 가져올 수(retrieve)있음
 ex) Array => someArr[index], Dictionary =>  someDic[key]로 접근.
 하나의 타입에 여러 서브스크립트를 정의할수 있으며, 오버로드 가능
 */

/**
  서브스크립트 문법(Subscript Syntax)
 인스턴스 메서드와 연산 프로퍼티를 선언하는 것과 비슷.
 차이점은 읽고-쓰기 or 읽기전용 만 가능하다는 점.
 */
//subscript(index: Int) -> Int {
//    get {
//        //적절한 반환 값
//    }
//    set(newValue){
//        //적절한 set 액션
//    }
//}

// set에 대한 인자값을 지정하지 않으면 기본값으로 newValue를 사용.
// 읽기전용으로 선언하려면, get/set을 지움. 지정하지 않으면 get으로만 동작하게 됨

// 읽기전용의 예,
struct TimesTable {
    let multiplier: Int
    subscript(index: Int) -> Int {
        return multiplier * index
    }
}
let threeTimesTable = TimesTable(multiplier: 3)
print("six times three is \(threeTimesTable[6])")

/**
 Dictionary 에서 서브스크립트의 사용 예
 */
var numberOfLegs = ["spider":8, "ant": 6, "cat": 4]
numberOfLegs["bird"] = 2
numberOfLegs

/**
 서브스크립트 옵션(Subscript Options)
 서브스크립트는 입력 인자의 숫자에 제한이 없음.
 반환타입의 제한도 없음
 다만 in-out인자 또는 기본 인자 값을 제공할 수 없음.
 */

// 서브스크립트를 이용해 다차원 행열을 선언하고 접근하는 예
struct Matrix {
    let rows: Int, columns: Int
    var grid: [Double]
    init(rows: Int, columns: Int) {
        self.rows = rows
        self.columns = columns
        grid = Array(repeating: 0.0, count: rows * columns)
    }
    
    func indexIsValid(row: Int, column: Int) -> Bool {
        return row >= 0 && row < rows && column >= 0 && column < columns
    }
    
    subscript(row: Int, column: Int) -> Double {
        get {
            assert(indexIsValid(row: row, column: column), "Index out of range")
            return grid[(row * column) + column]
        }
        
        set {
            assert(indexIsValid(row: row, column: column), "Index out of range")
            grid[(row * columns) + column] = newValue
        }
    }
}

var matrix = Matrix(rows: 2, columns: 2)
matrix[0, 1] = 1.5
matrix[1, 0] = 3.2

//let someValue = matrix[2, 2]      //행렬의 범위를 벗어나므로 assert가 실행됨
