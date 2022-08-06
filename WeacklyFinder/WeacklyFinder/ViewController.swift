//
//  ViewController.swift
//  WeacklyFinder
//
//  Created by Ilya Pleshakov on 06.08.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var DateTF: UITextField!
    @IBOutlet weak var MouthTF: UITextField!
    @IBOutlet weak var YearTF: UITextField!
    @IBOutlet weak var resultLable: UILabel!
    
    
    @IBAction func findDay(_ sender: UIButton) {
        
        guard let day = DateTF.text, let month = MouthTF.text, let year = YearTF.text else {
            return
        }
        
        let calendar = Calendar.current
        var dateComponents = DateComponents()
        dateComponents.day = Int(day)
        dateComponents.month = Int(month)
        dateComponents.year = Int(year)
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "EEEE"
        
        guard let date = calendar.date(from: dateComponents) else {
            return
        }
        
        let weekDay = dateFormatter.string(from: date)
        
        resultLable.text = weekDay
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
}

