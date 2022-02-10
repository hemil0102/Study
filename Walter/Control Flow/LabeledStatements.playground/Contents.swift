import UIKit

//레이블 구문
//Label 이름과 whlie 조건을 넣어 특정 구문을 실행
//Switch와 함께 사용 가능
var square = 0
var diceRoll = 0
let finalSquare = 8
let board = [12, 5, 20, 8, 19]
gameLoop: while square != finalSquare {
    diceRoll += 1
    if diceRoll == 7 { diceRoll = 1 }
    switch square + diceRoll {
    case finalSquare:
        // diceRoll will move us to the final square, so the game is over
        break gameLoop
    case let newSquare where newSquare > finalSquare:
        // diceRoll will move us beyond the final square, so roll again
        continue gameLoop
    default:
        // this is a valid move, so find out its effect
        square += diceRoll
        square += board[square]
    }
}
print("Game over!")

