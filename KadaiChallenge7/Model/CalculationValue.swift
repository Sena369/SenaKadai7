//
//  CalculationValue.swift
//  KadaiChallenge7
//
//  Created by 澤田世那 on 2022/04/19.
//

import Foundation

final class AdditionModel {
    func calculate(value1: Double, value2: Double) -> Double {
        value1 + value2
    }
}

final class SubtractionModel {
    func calculate(value1: Double, value2: Double) -> Double {
        value1 - value2
    }
}

enum CalculationErrorMessage {
    static let firstValueNonNumric = "一つ目の値を入力してください"
    static let secondValueNonNumric = "二つ目の値を入力してください"
}
