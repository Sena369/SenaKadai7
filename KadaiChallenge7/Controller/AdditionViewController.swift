//
//  AdditionViewController.swift
//  KadaiChallenge7
//
//  Created by 澤田世那 on 2022/04/20.
//

import UIKit

class AdditionViewController: UIViewController {

    @IBOutlet weak var firstTextField: UITextField!
    @IBOutlet weak var secondTextField: UITextField!
    @IBOutlet weak var resultLabel: UILabel!

    let additonModel = AdditionModel()

    @IBAction func calculateButton(_ sender: Any) {
        guard let firstValue = Int(firstTextField.text ?? "") else {
            return presentAlert(message: CalculationError.firstValueNonNumric.message)
        }
        guard let secondValue = Int(secondTextField.text ?? "") else {
            return presentAlert(message: CalculationError.secondValueNonNumric.message)
        }
        let resultValue = additonModel.addValue(value1: firstValue, value2: secondValue)
        resultLabel.text = String(resultValue)

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
