


enum School {
    case primay
    case ele
    case mide
    case high
}


var level: School = School.primay

var high: School = .mide

level = .ele

enum Week : Character { //raw value 할떄는 옆에 : 타입
    case mon = "월", tues = "화", wedns = "수", thurs = "목"
}

let today: Week = .mon
print(today)
print(today.rawValue) // 일단 투데이 mon으로 생성 해놓고 raw 발류는 그 다음에 접근
print(Week.tues.rawValue) //인스턴스 생성 안하고 바로

let tues = Week(rawValue: "수")

print(Week.tues)


enum MainDish { // : 타입 없음, 연관값 나중에 설정
    case pasta (taste: String)
    case pizza (dough: String, topping: String)
    case chicken (sauce: Bool)
    case rice
}


var dinner: MainDish = .pasta(taste: "크림")
print(dinner)

dinner = .pizza(dough: "thin", topping: "pussy")
dinner = .chicken(sauce: true)
dinner = .rice

enum PastaTaste {
    case cream, tomato
}


enum PizzaDough {
    case cheeseCrust, thin, original
}

enum PizzaTopping {
    case cheese, chest, pick
}

enum MMainDish {
    
    case pasta(taste: PastaTaste)// 원래 타입 이름이 오던 자리에 열거형 이름을 넣음
    case pizza(bbang: PizzaDough, top: PizzaTopping)
    
    
}

var ddiner: MMainDish = MMainDish.pasta(taste: <#T##PastaTaste#>)

