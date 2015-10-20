//
//  Unit Tests.swift
//  domain-modeling-part2
//
//  Created by Bruce Ng on 10/20/15.
//  Copyright © 2015 Bruce Ng. All rights reserved.
//

import Foundation

func testMoneyStringConvertible(Expected : String, passedMoney : Money!) {
    if (passedMoney != nil) {
        if (passedMoney.amount != nil && passedMoney.currency != nil) {
            print("The Expected result is \(Expected)")
            print(" The Money Object's Currency is \(passedMoney.currency!)")
            print(" The Money Object's Amount is \(passedMoney.amount!)")
            print(" The Money Object's String Result is \(passedMoney.description)")
            if (Expected == passedMoney.description) {
                print(" The Unit Test has Passed")
            } else {
                print(" The Unit Test has Failed")
            }
        } else {
            print("One of the variables is nil so unable to finish test")
        }
    }
}

func testJobStringConvertible(Expected : String, passedJob : Job!) {
    if (passedJob != nil) {
        if (passedJob.jobType != nil && passedJob.jobSalary != nil && passedJob.jobTitle != nil) {
            print("The Expected result is \(Expected)")
            print(" The Job Object's Title is \(passedJob.jobTitle!)")
            print(" The Job Object's Salary is \(passedJob.jobSalary!)")
            print(" The Job Object's String Result is \(passedJob.description)")
            if (Expected == passedJob.description) {
                print(" The Unit Test has Passed")
            } else {
                print(" The Unit Test has Failed")
            }
        } else {
            print("One of the variables is nil so unable to finish test")
        }
    }
}

func testPersonStringConvertible(Expected : String, passedPerson : Person!) {
    if (passedPerson != nil) {
        if (passedPerson.firstName != nil && passedPerson.lastName != nil && passedPerson.currentAge != nil) {
            print("The Expected result is \(Expected)")
            print(" The Person Object's First and Last Name is \(passedPerson.firstName!) \(passedPerson.lastName!)")
            print(" The Person Object's Age is \(passedPerson.currentAge!)")
            if (passedPerson.job != nil) {
                print(" The Person Object's Job is \(passedPerson.job!.jobTitle!)")
            }
            if (passedPerson.spouse != nil) {
                print(" The Person Object's Spouse is \(passedPerson.spouse!.firstName!) \(passedPerson.spouse!.lastName!)")
            }
            print(" The Person Object's String Result is \(passedPerson.description)")
            if (Expected == passedPerson.description) {
                print(" The Unit Test has Passed")
            } else {
                print(" The Unit Test has Failed")
            }
        } else {
            print("One of the variables is nil so unable to finish test")
        }
    }
}

func testFamilyStringConvertible(Expected : String, passedFamily : Family!) {
    if (passedFamily != nil) {
        print("The Expected result is \(Expected)")
        print(" The Family has ")
        for (var i = 0; i < passedFamily.members!.count; i++) {
            print("     \(passedFamily.members![i].firstName!) \(passedFamily.members![i].lastName!)")
        }
        print(" The Family Object's String Result is \(passedFamily.description)")
        if (Expected == passedFamily.description) {
            print(" The Unit Test has Passed")
        } else {
            print(" The Unit Test has Failed")
        }
    } else {
        print("One of the variables is nil so unable to finish test")
    }
}


func testAdd(amount : Double, Currency : String, money1 : Money?, money2 : Money?) {
    if (money1 != nil && money2 != nil) {
        print("Expected Result is \(amount) \(Currency)")
        print(" Money 1 is \(money1!.amount!) \(money1!.currency!)")
        print(" Money 2 is \(money2!.amount!) \(money2!.currency!)")
        let add = money1!.add(money2!)
        print(" Result from addition is \(add.amount!) \(add.currency!)")
        if (amount == add.amount && Currency == add.currency) {
            print(" The Unit Test has Passed")
        } else {
            print(" The Unit Test has Failed")
        }
    } else {
        print("One of the variables is nil so unable to finish test")
    }
}

func testSub(amount : Double, Currency : String, money1 : Money?, money2 : Money?) {
    if (money1 != nil && money2 != nil) {
        print("Expected Result is \(amount) \(Currency)")
        print(" Money 1 is \(money1!.amount!) \(money1!.currency!)")
        print(" Money 2 is \(money2!.amount!) \(money2!.currency!)")
        let sub = money1!.sub(money2!)
        print(" Result from subtraction is \(sub.amount!) \(sub.currency!)")
        if (amount == sub.amount && Currency == sub.currency) {
            print(" The Unit Test has Passed")
        } else {
            print(" The Unit Test has Failed")
        }
    } else {
        print("One of the variables is nil so unable to finish test")
    }
}

func testDouble(doubleAmount : Double?, currency : String?) {
    var convertedMoney = Money(amount: nil, currency : nil)
    if (currency == "USD") {
        convertedMoney = doubleAmount!.toUSD
    } else if (currency == "EUR") {
        convertedMoney = doubleAmount!.toEUR
    } else if (currency == "GBP") {
        convertedMoney = doubleAmount!.toGBP
    } else if (currency == "CAN") {
        convertedMoney = doubleAmount!.toCAN
    } else {
        print("Not valid extension conversion to \(currency!)")
    }
    if (convertedMoney.amount != nil && convertedMoney.currency != nil) {
        print("The Expected Output is Money Object with amount: \(doubleAmount!) and currency: \(currency!)")
        print(" The Converted Output returns amount: \(convertedMoney.amount!) and currency: \(convertedMoney.currency!)")
        if (convertedMoney.amount == doubleAmount && convertedMoney.currency == currency) {
            print(" The Unit Test has Passed")
        } else {
            print(" The Unit Test has Failed")
        }
    }
}
