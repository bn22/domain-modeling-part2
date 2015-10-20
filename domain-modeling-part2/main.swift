import Foundation

print("//CustomStringConvertible//")
print(" ")
let money1 = Money(amount: 10.0, currency: "USD")
let money2 = Money(amount: 2.5, currency: "CAN")
let money3 = Money(amount: 3.0, currency: "EUR")
let money4 = Money(amount: nil, currency: "GBP")
let money5 = Money(amount: 3.0, currency: "GBP")
testMoneyStringConvertible("USD10.0", passedMoney: money1)
testMoneyStringConvertible("CAN2.5", passedMoney: money2)
testMoneyStringConvertible("EUR3.0", passedMoney: money3)
testMoneyStringConvertible("GBP3.0", passedMoney: money4)
print(" ")
let job1 : Job? = Job(title: "Teacher", salary: 300000, type: "yearly")
let job2 : Job? = Job(title: "CEO", salary: 3000000, type: "yearly")
let job3 : Job? = Job(title: "Cashier", salary: nil, type: "yearly")
testJobStringConvertible("Teacher earns 300000 yearly", passedJob: job1)
testJobStringConvertible("CEO earns 3000000 yearly", passedJob: job2)
testJobStringConvertible("Cashier earns nil yearly", passedJob: job3)
print(" ")
let a : Person? = Person(first: "Christy", last: "Moran", currentJob: job1, currentSpouse: nil, ageNow: 18)
let b : Person? = Person(first : "Thomas", last: "Olson", currentJob: job2, currentSpouse: a, ageNow: 23)
let c : Person? = Person(first : "Jim", last: "Olson", currentJob: job3, currentSpouse: nil, ageNow: 27)
let d : Person? = Person(first : "Clare", last: "Malave", currentJob: job1, currentSpouse: c, ageNow: 29)
print(" ")
testPersonStringConvertible("Thomas Olson is 23, works as a CEO and married to Christy Moran", passedPerson : b)
testPersonStringConvertible("Clare Malave is 29, works as a Teacher and married to Jim Olson", passedPerson : d)
print(" ")

let personArray1 : [Person]? = [a!, b!, c!]
let personArray2 : [Person]? = [a!, b!, d!]
let family1 : Family? = Family(familyMembers: personArray1)
let family2 : Family? = Family(familyMembers: personArray2)
testFamilyStringConvertible("Family Members are Christy Moran Thomas Olson Jim Olson", passedFamily: family1)
testFamilyStringConvertible("Family Members are Christy Moran Thomas Olson Clare Malave", passedFamily: family2)

print(" ")
print("//Mathematics//")

testAdd(15.0, Currency: "CAN", money1: money1, money2: money2)
testSub(12.0, Currency: "EUR", money1: money1, money2: money3)
testAdd(12.0, Currency: "USD", money1: money2, money2: money1)
testSub(-2.0, Currency: "GBP", money1: money2, money2: money5)
testAdd(12.0, Currency: "USD", money1: money3, money2: money1)
testSub(-2.0, Currency: "GBP", money1: money3, money2: money5)
testAdd(10.0, Currency: "CAN", money1: money5, money2: money2)
testSub(6.0, Currency: "EUR", money1: money5, money2: money3)

print(" ")
print("//Double Extension//")
print(" ")

testDouble(20.2, currency : "USD")
testDouble(20.1, currency : "CAN")
testDouble(20.6, currency : "GBP")
testDouble(12.4, currency : "EUR")
testDouble(4.25, currency : "YEN")
testDouble(13.2, currency : "USD")
testDouble(18.6, currency : "CAN")
testDouble(2.1, currency : "GBP")
testDouble(4.5, currency : "EUR")
testDouble(4.12, currency : "YEN")