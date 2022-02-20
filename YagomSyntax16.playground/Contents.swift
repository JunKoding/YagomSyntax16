import Cocoa

// closure 클로저 기본

// 코드의 블럭
// 일급 시민 (first - citizen)
// 변수, 상수 등으로 저장, 전달인자로 전달이 가능
// 함수: 이름이 있는 클로저




// 정의

// { (매개변수 목록) -> 반환타입 in
// 실행코드
// }

// 함수를 사용한다면 (함수는 클로저의 일종)
func sumFunction(a: Int, b: Int) -> Int {
    return a + b
}

var sumResult: Int = sumFunction(a: 1, b: 2)

print(sumResult)
// 3

// 클로저의 사용

var sum: (Int, Int) -> Int = { (a: Int, b: Int) -> Int in
    return a + b
}

sumResult = sum(1, 2)
print(sumResult)
// 3

// 함수는 클로저의 일종이므로
// sum 변수에는 당연히 함수도 할당할 수 있다.
sum = sumFunction(a:b:)

sumResult = sum(1, 2)
print(sumResult)
// 3





// 함수의 전달인자로서의 클로저

let add: (Int, Int) -> Int
add = { (a:Int, b: Int) -> Int in
    return a + b
}

let substract: (Int, Int) -> Int
substract = { (a: Int, b: Int) -> Int in
    return a - b
}

let divide: (Int, Int) -> Int
divide = { (a: Int, b: Int) -> Int in
    return a / b
}

func calculate(a: Int, b: Int, method: (Int, Int) -> Int) -> Int {
    return method (a, b) // method 호출 (전달받은 클로저 호출)
}
// calculate라는 함수에 method라는 클로저를 넘겨준다.

var calculated: Int

calculated = calculate(a: 50, b:10, method: add)
print(calculated) // 60

calculated = calculate(a: 50, b: 10, method: substract)
print(calculated) // 40

calculated = calculate(a: 50, b: 10, method: divide)
print(calculated) // 5

calculated = calculate(a: 50, b: 10, method: { (left: Int, right: Int) -> Int in
    return left * right
})
// 바로 코드블럭을 작성해서 함수 전달 가능.
print(calculated) // 500

