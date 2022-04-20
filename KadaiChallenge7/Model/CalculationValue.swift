//
//  CalculationValue.swift
//  KadaiChallenge7
//
//  Created by 澤田世那 on 2022/04/19.
//

import Foundation

struct AdditionModel {
    func addValue(value1: Int, value2: Int) -> Int {
        value1 + value2
    }
}

struct SubtractionModel {
    func subtractValue(value1: Int, value2: Int) -> Int {
        value1 - value2
    }
}

enum CalculationError: Error {
    case firstValueNonNumric
    case secondValueNonNumric

    var message: String {
        switch self {
        case .firstValueNonNumric:
            return "一つ目の値を入力してください"
        case .secondValueNonNumric:
            return "二つ目の値を入力してください"
        }
    }
}
