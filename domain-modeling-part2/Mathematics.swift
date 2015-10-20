//
//  Mathematics.swift
//  domain-modeling-part2
//
//  Created by Bruce Ng on 10/19/15.
//  Copyright © 2015 Bruce Ng. All rights reserved.
//

import Foundation

protocol Mathematics {
    func add(passedMoney: Money?) -> Money
    func sub(passedMoney: Money?) -> Money
}