//
//  AdditionViewController.swift
//  KadaiChallenge7
//
//  Created by 澤田世那 on 2022/04/20.
//

import UIKit

class AdditionViewController: UIViewController {

    @IBOutlet private weak var firstTextField: UITextField!
    @IBOutlet private weak var secondTextField: UITextField!
    @IBOutlet private weak var resultLabel: UILabel!

    private let additionModel = AdditionModel()

    @IBAction func calculateButton(_ sender: Any) {
        guard let firstValue = Double(firstTextField.text ?? "") else {
            presentAlert(message: CalculationErrorMessage.firstValueNonNumric)
            return
        }
        guard let secondValue = Double(secondTextField.text ?? "") else {
            presentAlert(message: CalculationErrorMessage.secondValueNonNumric)
            return
        }
        resultLabel.text = String(additionModel.add(value1: firstValue, value2: secondValue))

        firstTextField.endEditing(true)
        secondTextField.endEditing(true)
    }

    func presentAlert(message: String) {
        let alert = UIAlertController(title: "エラー", message: message, preferredStyle: .alert)
        let alertAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(alertAction)
        present(alert, animated: true, completion: nil)
    }
}
