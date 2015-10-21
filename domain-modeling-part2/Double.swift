//
//  Double.swift
//  domain-modeling-part2
//
//  Created by Bruce Ng on 10/19/15.
//  Copyright © 2015 Bruce Ng. All rights reserved.
//

import Foundation

extension Double {
    var toUSD: Money {return Money(amount: self, currency: "USD")}
    var toYEN: Money {return Money(amount: self, currency: "YEN")}
    var toGBP: Money {return Money(amount: self, currency: "GBP")}
    var toEUR: Money {return Money(amount: self, currency: "EUR")}
}

