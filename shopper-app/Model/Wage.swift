//
//  Wage.swift
//  shopper-app
//
//  Created by Илья Груздев on 22.03.2021.
//

import Foundation
class Wage{
    class func getHourse(forWage wage : Double, andPrice price : Double) -> Int {
        return Int(ceil(price / wage))
    }
}
