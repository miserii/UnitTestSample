//
//  ViewController.swift
//  UnitTestSample
//
//  Created by osakamiseri on 2021/03/03.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // let x: Int = add(1, 1)
        // let y: Int = add(1, 2)
    }

    func add(_ x: Int, _ y: Int) -> Int {
        return x + y
    }

    func validate(password: String) -> Bool {
        if password.count <= 7 {
            return false
        }
        let numString = password.components(
            separatedBy: CharacterSet.decimalDigits.inverted).joined()
        return numString.count >= 2
    }

}

