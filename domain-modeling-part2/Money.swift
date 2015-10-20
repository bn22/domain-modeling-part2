import Foundation

struct Money: CustomStringConvertible, Mathematics {
    var amount : Double?
    var currency : String?
    
    init(amount : Double?, currency : String?) {
        self.amount = amount
        self.currency = currency
    }
    
    var description : String {
        if amount != nil && currency != nil {
            return ("\(currency!)\(amount!)")
        } else {
            return " "
        }
    }
    
    func add(passedMoney: Money?) -> Money {
        var newMoney = Money(amount: nil, currency: nil)
        if (passedMoney!.currency != nil && passedMoney!.amount != nil) {
            let currentAmount = conversions(currency, target: passedMoney!.currency, amount: amount)
            let newAmount = currentAmount + passedMoney!.amount!
            newMoney = Money(amount: newAmount, currency: passedMoney!.currency)
        }
        return newMoney
    }
    
    func sub(passedMoney: Money?) -> Money {
        var newMoney = Money(amount: nil, currency: nil)
        if (passedMoney!.currency != nil && passedMoney!.amount != nil) {
            let currentAmount = conversions(currency, target: passedMoney!.currency, amount: amount)
            let newAmount = currentAmount - passedMoney!.amount!
            newMoney = Money(amount: newAmount, currency: passedMoney!.currency)
        }
        return newMoney
    }
    
    mutating func convertMoney(newCurrency : String?){
        if (newCurrency != nil && amount != nil && currency != nil) {
            if (newCurrency! == "GBP" || newCurrency! == "CAN" || newCurrency! == "USD" || newCurrency! == "EUR") {
                amount = conversions(currency!, target : newCurrency!, amount : amount!)
                currency = newCurrency
            } else {
                print("Convert to \(newCurrency!) is invalid because it is not supported")
            }
        } else {
            print("Unable to convert since one property is nil")
        }
    }
    
    mutating func addMoney(change : Double?, tCurrency : String?) {
        if (change != nil && tCurrency != nil && amount != nil && currency != nil) {
            if (tCurrency! == "GBP" || tCurrency! == "CAN" || tCurrency! == "USD" || tCurrency! == "EUR") {
                amount = conversions(currency!, target : tCurrency!, amount : amount!)
                let change = conversions(tCurrency!, target: tCurrency!, amount : change!)
                amount = amount! + change
                currency = tCurrency
            } else {
                print("Addition of \(change!) \(tCurrency!) is invalid")
            }
        } else {
            print("Unable to add since one property is nil")
        }
    }
    
    mutating func subMoney(change : Double?, tCurrency : String?) {
        if (change != nil && tCurrency != nil && amount != nil && currency != nil) {
            if (tCurrency! == "GBP" || tCurrency! == "CAN" || tCurrency! == "USD" || tCurrency! == "EUR") {
                amount = conversions(currency!, target : tCurrency!, amount : amount!)
                let change = conversions(tCurrency!, target: tCurrency!, amount : change!)
                amount = amount! - change
                currency = tCurrency
            } else {
                print("Subtraction of \(change!) \(tCurrency!) is Invalid")
            }
        } else {
            print("Unable to sub since one property is nil")
        }
    }
    
    func conversions(current : String?, target : String?, amount : Double?) -> Double {
        if (current != nil && amount != nil && currency != nil && amount != nil) {
            if (current == "USD") {
                if (target == "GBP") {
                    return 0.5 * amount!
                } else if (target == "CAN") {
                    return 1.25 * amount!
                } else if (target == "EUR") {
                    return 1.5 * amount!
                }
            } else if (current == "GBP") {
                if (target == "USD") {
                    return 2.0 * amount!
                } else if (target == "CAN") {
                    return 2.5 * amount!
                } else if (target == "EUR") {
                    return 3.0 * amount!
                }
            } else if (current == "CAN") {
                if (target == "GBP") {
                    return (1.0 / 2.5) * amount!
                } else if (target == "USD") {
                    return (1.0 / 1.25) * amount!
                } else if (target == "EUR") {
                    return (1.5 / 1.25) * amount!
                }
            } else if (current == "EUR") {
                if (target == "GBP") {
                    return (1.0 / 3.0) * amount!
                } else if (target == "CAN") {
                    return (1.25 / 1.5) * amount!
                } else if (target == "USD") {
                    return (1.0 / 1.5) * amount!
                }
            }
            return amount!
        } else {
            print("can't convert")
            return 0.0
        }
    }
}